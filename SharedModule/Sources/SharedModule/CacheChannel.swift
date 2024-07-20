//
//  File.swift
//  
//
//  Created by Paul Kim on 7/16/24.
//

import Foundation

//public struct CacheChannel: Channel, Codable {
//    
//    public var id: String
//    public var name: String
//    // TODO: - do we need this? can we just construct a channel URL from id/login?
//    public var userLogin: String
//    public var imageURL: URL?
//    public var platform: Platform
//    
//    public func toCacheType() -> CacheChannel {
//        return self
//    }
//    
//    public init(id: String, name: String, userLogin: String, imageURL: URL? = nil, platform: Platform) {
//        self.id = id
//        self.name = name
//        self.userLogin = userLogin
//        self.imageURL = imageURL
//        self.platform = platform
//    }
//    
//}

public enum Platform: Codable {
    case twitch
    case youTube
}
