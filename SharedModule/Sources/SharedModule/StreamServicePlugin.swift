//
//  File.swift
//  
//
//  Created by Paul Kim on 7/16/24.
//

import Foundation
import Combine
import SwiftUI

@propertyWrapper
public struct PluginStorage<Plugin: StreamServicePlugin>: DynamicProperty {

    @State private var value = ""
    private let key: String
    private let storage: UserDefaults

    public init(_ name: String) {
        let key = String(describing: Plugin.self) + "-\(name)"
        self.key = key
//        self.key = String(describing: Plugin.self)
        self.storage = UserDefaults.standard
        
        let initialValue = storage.value(forKey: key) as? String ?? value
        _value = State(wrappedValue: initialValue)
    }

    public var wrappedValue: String {
        get {
//            return value
            return storage.value(forKey: key) as? String ?? ""
        }
        nonmutating set {
//            storage.setValue(newValue, forKey: key)
//            value = newValue
            storage.setValue(newValue, forKey: key)
        }
    }
    
    public var projectedValue: Binding<String> {
        Binding(
            get: {
//                return value
                return wrappedValue
            },
            set: {
//                storage.setValue($0, forKey: key)
//                value = $0
                wrappedValue = $0
            }
        )
    }
    
}

public struct PluginConfiguration {
    
    public var title: String
    public var dict: [String: Binding<String>]
    
    public init(title: String, dict: [String : Binding<String>]) {
        self.title = title
        self.dict = dict
    }
    
}


public protocol StreamServicePlugin {
    
    var platformName: String { get }
    
    init()
    
    var channelsPublisher: AnyPublisher<[Channel], Never> { get }
    var streamsPublisher: AnyPublisher<[Video], Never> { get }
    
    func fetchChannels(channels: [Channel]) async throws
    func fetchStreams(channels: [Channel]) async throws
    func addChannel(from url: URL) async throws

    var configuration: PluginConfiguration { get }
    
}

//@propertyWrapper
//public struct GenericPluginStorage<Plugin: StreamServicePlugin, T>: DynamicProperty {
//
//    @State private var value: T
//    private let key: String
//    private let defaultValue: T
//    private let storage: UserDefaults
//
//    public init(_ name: String, defaultValue: T) {
//        let key = String(describing: Plugin.self) + "-\(name)"
//        self.key = key
//        self.defaultValue = defaultValue
//        self.storage = UserDefaults.standard
//        
//        let initialValue = storage.value(forKey: key) as? T ?? defaultValue
//        _value = State(wrappedValue: initialValue)
//    }
//
//    public var wrappedValue: T {
//        get {
//            return storage.value(forKey: key) as? T ?? defaultValue
//        }
//        nonmutating set {
////            print(key, "wrappedValue setter:", newValue)
////            storage.set(newValue, forKey: key)
////            value = newValue
//            storage.setValue(newValue, forKey: key)
//        }
//    }
//    
//    public var projectedValue: Binding<T> {
//        Binding(
//            get: {
////                print(key, "projectedValue getter:", wrappedValue)
//                return wrappedValue
//            },
//            set: {
////                print(key, "projectedValue setter:", $0)
//                wrappedValue = $0
//            }
//        )
//    }
//    
//}
