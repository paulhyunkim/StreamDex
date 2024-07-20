//
//  DataController.swift
//  StreamDex
//
//  Created by Paul Kim on 12/5/22.
//

import Foundation
import Combine
import SharedModule
import SwiftData

@MainActor
class DataController {
    
    var modelContainer: ModelContainer
    var pluginsController: PluginsController
    var cancellables = Set<AnyCancellable>()
    
    init() throws {
        let config = ModelConfiguration(allowsSave: true, groupContainer: .automatic, cloudKitDatabase: .automatic)
        self.modelContainer = try ModelContainer(for: Channel.self, Video.self, configurations: config)
        self.pluginsController = PluginsController()
        
        do {
            try modelContainer.mainContext.delete(model: Video.self)
            
//            TestData.Channels.forEach {
//                modelContainer.mainContext.insert($0)
//            }
            
        } catch {
            print("Could not delete all videos")
        }
        
        setupSubscriptions()
    }
    
    func fetchChannels() {
        Task { [weak self] in
            guard let self else { return }
            let modelContext = ModelContext(self.modelContainer)
            let channels = try modelContext.fetch(FetchDescriptor<Channel>())
            try await self.pluginsController.fetchChannels(channels: channels)
        }
    }
    
    func fetchStreams() {
        Task { [weak self] in
            guard let self else { return }
            let modelContext = ModelContext(self.modelContainer)
            let channels = try modelContext.fetch(FetchDescriptor<Channel>())
            try await self.pluginsController.fetchStreams(channels: channels)
        }
    }
    
    func updateChannels(channels: [Channel]) async throws {
        // batch update in background
        
        let modelContext = ModelContext(modelContainer)
        let storedChannels = try modelContext.fetch(FetchDescriptor<Channel>())
        
        channels.forEach { channel in
            if let matchedChannel = storedChannels.first(where: { $0.id == channel.id }) {
                matchedChannel.userLogin = channel.userLogin
                matchedChannel.name = channel.name
                matchedChannel.imageURL = channel.imageURL
            } else {
                modelContext.insert(channel)
            }
        }
        
        try modelContext.save()
    }
    
    func updateStreams(videos: [Video]) async throws {
        // batch update in background
        
        let modelContext = ModelContext(modelContainer)
        let storedVideos = try modelContext.fetch(FetchDescriptor<Video>())
        
        videos.forEach { video in
            if let matchedVideo = storedVideos.first(where: { $0.url == video.url }) {
                matchedVideo.chatURL = video.chatURL
                matchedVideo.actualStartTime = video.actualStartTime
                matchedVideo.scheduledStartTime = video.scheduledStartTime
                matchedVideo.status = video.status
                matchedVideo.title = video.title
                matchedVideo.topic = video.topic
                matchedVideo.viewerCount = video.viewerCount
            } else {
                modelContext.insert(video)
            }
        }
        
        try modelContext.save()
    }
    
    func setupSubscriptions() {
        cancellables.removeAll()
        
        pluginsController.channelsPublisher
            .sink { [weak self] channels in
                guard let self else { return }
                Task {
                    try await self.updateChannels(channels: channels)
                }
            }
            .store(in: &cancellables)
        
        pluginsController.streamsPublisher
            .sink { [weak self] streams in
                guard let self else { return }
                Task {
                    try await self.updateStreams(videos: streams)
                }
            }
            .store(in: &cancellables)
        
        Timer.publish(every: 60, on: .main, in: .common)
            .autoconnect()
            .prepend(Date())
            .sink { [weak self] _ in
                guard let self else { return }
                self.fetchStreams()
            }
            .store(in: &cancellables)
        
        Timer.publish(every: 60 * 60 * 1, on: .main, in: .common)
            .autoconnect()
            .prepend(Date())
            .sink { [weak self] _ in
                guard let self else { return }
                self.fetchChannels()
            }
            .store(in: &cancellables)
    }
    
    private var streamsSubject = CurrentValueSubject<[Video], Never>([])
    private var channelsSubject = CurrentValueSubject<[Channel], Never>([])
    
    var justWentLivePublisher: AnyPublisher<[Video], Never> {
        //        $streams
        //            .scan([]) { (initial, next) in
        //                return next
        //                    .filter { newStream in
        //                        let isAddition = !self.streams.contains { oldStream in
        //                            oldStream.channel.id == newStream.channel.id
        //                        }
        //
        //                        guard let startTime = newStream.startTime else {
        //                            return false
        //                        }
        //                        let didJustStart = Date.now.timeIntervalSince(startTime) < 3 * 60
        //                        return isAddition && didJustStart
        //                    }
        //            }
        //            .eraseToAnyPublisher()
        Empty().eraseToAnyPublisher()
    }
    
    var justEndedPublisher: AnyPublisher<[Video], Never> {
        //        $streams
        //            .scan([]) { (initial, next) in
        //                return initial
        //                    .filter { oldStream in
        //                        !next.contains { newStream in
        //                            oldStream.channel.id == newStream.channel.id
        //                        }
        //                    }
        //            }
        //            .eraseToAnyPublisher()
        Empty().eraseToAnyPublisher()
    }

    
    func addChannel(for url: URL) {
        //        Task {
        //            do {
        //                if url.host()?.contains("twitch") == true {
        //                    try await twitchDataProvider.addChannel(from: url)
        //                } else if url.host()?.contains("youtube") == true {
        //                    try await youTubeDataProvider.addChannel(from: url)
        //                }
        //                let channels: [Channel] = [] //youTubeDataProvider.cachedChannels + twitchDataProvider.cachedChannels
        //                await MainActor.run {
        //                    self.channels = channels.sorted(by: { lhs, rhs in lhs.name.lowercased() < rhs.name.lowercased() })
        //                }
        //            } catch {
        //                print(error)
        //            }
        //
        //        }
        //        fetchStreams()
    }
    
    
}
