//
//  File.swift
//  
//
//  Created by Paul Kim on 7/16/24.
//

import Foundation
import SharedModule

//public struct YouTubeChannel: Codable {
//    
//    public var id: String
//    public var name: String
//    public var userLogin: String
//    public var imageURL: URL?
//    
//    public init(id: String, name: String, userLogin: String, imageURL: URL? = nil) {
//        self.id = id
//        self.name = name
//        self.userLogin = userLogin
//        self.imageURL = imageURL
//    }
//    
////    public init(cachedChannel: Channel) {
////        self.id = cachedChannel.id
////        self.name = cachedChannel.name
////        self.userLogin = cachedChannel.userLogin
////        self.imageURL = cachedChannel.imageURL
////    }
//    
//    init(responseItem: GetYouTubeChannelSuccess.Item) {
//        self.id = responseItem.id
//        self.name = responseItem.snippet.title
//        self.userLogin = responseItem.snippet.customUrl
//        self.imageURL = responseItem.snippet.thumbnails.default.url
//    }
//
////    public func toCacheType() -> CacheChannel {
////        CacheChannel(id: id, name: name, userLogin: userLogin, imageURL: imageURL, platform: .youTube)
////    }
//
//}

//struct TwitchChannel: Channel, Codable, Hashable {
//    
//    var id: String
//    var name: String
//    var userLogin: String
//    var imageURL: URL?
//    
//    enum CodingKeys: String, CodingKey {
//        case id = "to_id"
//        case name = "to_name"
//        case userLogin = "to_login"
//    }
//    
//    init(userData: GetTwitchUsersResponse.Data, channelData: GetTwitchChannelsResponse.Data) {
//        self.id = channelData.broadcaster_id
//        self.name = channelData.broadcaster_name
//        self.userLogin = channelData.broadcaster_login
//        self.imageURL = userData.profile_image_url
//    }
//    
//    init(responseItem: GetTwitchUsersResponse.Data) {
//        self.id = responseItem.id
//        self.name = responseItem.display_name
//        self.userLogin = responseItem.login
//        self.imageURL = responseItem.profile_image_url
//    }
//    
//    init(responseItem: GetTwitchChannel) {
//        self.id = responseItem.to_id
//        self.name = responseItem.to_name
//        self.userLogin = responseItem.to_login
//        // TODO: - from GET USERS
////        self.imageURL = responseItem.
//    }
//    
//    init(cachedChannel: Channel) {
//        self.id = cachedChannel.id
//        self.name = cachedChannel.name
//        self.userLogin = cachedChannel.userLogin
//        self.imageURL = cachedChannel.imageURL
//    }
//    
//    func toCacheType() -> CacheChannel {
//        CacheChannel(id: id, name: name, userLogin: userLogin, imageURL: imageURL, platform: .twitch)
//    }
//    
//}

extension Channel {
    
    convenience init(userData: GetTwitchUsersResponse.Data, channelData: GetTwitchChannelsResponse.Data) {
        self.init(
            id: channelData.broadcaster_id,
            name: channelData.broadcaster_name,
            userLogin: channelData.broadcaster_login,
            platform: "twitch",
//            imageBackgroundColor: .purple,
            imageURL: userData.profile_image_url
        )
    }
    
    convenience init(responseItem: GetTwitchUsersResponse.Data) {
        self.init(
            id: responseItem.id,
            name: responseItem.display_name,
            userLogin: responseItem.login,
            platform: "twitch",
//            imageBackgroundColor: .purple,
            imageURL: responseItem.profile_image_url
        )
    }
    
    convenience init(responseItem: GetTwitchChannel) {
        self.init(
            id: responseItem.to_id,
            name: responseItem.to_name,
            userLogin: responseItem.to_login,
            platform: "twitch",
//            imageBackgroundColor: .purple,
            // TODO: - from GET USERS
            imageURL: nil
        )
    }
    
}
