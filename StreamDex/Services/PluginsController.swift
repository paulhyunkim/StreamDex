//
//  PluginsController.swift
//  StreamDex
//
//  Created by Paul Kim on 7/18/24.
//

import Foundation
import Combine
import SharedModule
import YouTubePlugin
import TwitchPlugin

final class PluginsController {
    
    private let plugins: [any StreamServicePlugin]
    private var channelsSubject = CurrentValueSubject<[Channel], Never>([])
    private var streamsSubject = CurrentValueSubject<[Video], Never>([])
    
    private var cancellables = Set<AnyCancellable>()
    
    var channelsPublisher: AnyPublisher<[Channel], Never> { channelsSubject.eraseToAnyPublisher() }
    var streamsPublisher: AnyPublisher<[Video], Never> { streamsSubject.eraseToAnyPublisher() }
    
    init() {
        self.plugins = [
            YouTubeService(),
            TwitchPlugin()
        ]
        
        setupSubscriptions()
    }
    
    var configs: [PluginConfiguration] {
        plugins.map { $0.configuration }
    }
    
    private func setupSubscriptions() {
        combineLatestPublishers(plugins.map { $0.channelsPublisher })
            .map { $0.sorted { $0.name.lowercased() < $1.name.lowercased() } }
            .subscribe(channelsSubject)
            .store(in: &cancellables)
        
        combineLatestPublishers(plugins.map { $0.streamsPublisher })
            .map { $0.sorted { $0.viewerCount > $1.viewerCount } }
            .subscribe(streamsSubject)
            .store(in: &cancellables)
    }
    
    func fetchChannels(channels: [Channel]) async throws {
        Task {
            await withTaskGroup(of: Void.self) { group in
                plugins.forEach { plugin in
                    group.addTask {
                        do {
                            try await plugin.fetchChannels(channels: channels)
                        } catch {
                            print("Fetch channels error from \(plugin):", error)
                        }
                    }
                }
            }
        }
    }
    
    func fetchStreams(channels: [Channel]) async throws {
        Task {
            await withTaskGroup(of: Void.self) { group in
                plugins.forEach { plugin in
                    group.addTask {
                        do {
                            try await plugin.fetchStreams(channels: channels)
                        } catch {
                            print("Fetch streams error from \(plugin):", error)
                        }
                    }
                }
            }
        }
    }
    
    func addChannel(from url: URL) async throws {
        
    }
    
    
}


extension PluginsController {
    
    // TODO: - convert to struct on Publishers
    private func combineLatestPublishers<T>(
        _ publishers: [AnyPublisher<[T], Never>]
    ) -> AnyPublisher<[T], Never> {
        guard !publishers.isEmpty else {
            return Just([]).eraseToAnyPublisher()
        }
        
        return publishers.dropFirst().reduce(
            publishers.first!.map { $0 }.eraseToAnyPublisher()
        ) { combined, next in
            combined
                .combineLatest(next) { $0 + $1 }
                .eraseToAnyPublisher()
        }
    }
    
}
