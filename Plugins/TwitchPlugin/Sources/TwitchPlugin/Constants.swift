//
//  File.swift
//  
//
//  Created by Paul Kim on 7/16/24.
//

import Foundation

struct Constant {
    
//    static let getChannelsURL = URL(string: "https://youtube.googleapis.com/youtube/v3/channels")!
//    static let getVideosURL = URL(string: "https://youtube.googleapis.com/youtube/v3/videos")!
//    static let channels = "\(bundleID).youTubeChannels"
////    static let favoriteChannels = "\(bundleID).favoriteChannels"
////    static let enabledNotifications = "\(bundleID).enabledNotifications"
////    static let channels = "\(bundleID).channels"
////    static let apiKey = "\(bundleID).youtubeAPIKey"
//    
//    static let bundleID = "com.paulkim.StreamDex"
    
    static let oauthValidateURL = URL(string: "https://id.twitch.tv/oauth2/validate")!
    static let followedApiURL = URL(string: "https://api.twitch.tv/helix/streams/followed")!
    static let streamerDataURL = URL(string: "https://api.twitch.tv/helix/users")!
    static let allFollowedURL = URL(string: "https://api.twitch.tv/helix/users/follows")!
    static let usersURL = URL(string: "https://api.twitch.tv/helix/users")!
    static let channelsURL = URL(string: "https://api.twitch.tv/helix/channels")!
    static let streamsURL = URL(string: "https://api.twitch.tv/helix/streams")!
    static let channels = "\(bundleID).twitchChannels"
    static let user = "\(bundleID).twitchUser"
    
    public static let bundleID = "com.paulkim.StreamDex"
    
}


//public struct Constant {
//
//    public struct Twitch {
//        public static let oauthValidateURL = URL(string: "https://id.twitch.tv/oauth2/validate")!
//        public static let followedApiURL = URL(string: "https://api.twitch.tv/helix/streams/followed")!
//        public static let streamerDataURL = URL(string: "https://api.twitch.tv/helix/users")!
//        public static let allFollowedURL = URL(string: "https://api.twitch.tv/helix/users/follows")!
//        public static let usersURL = URL(string: "https://api.twitch.tv/helix/users")!
//        public static let channelsURL = URL(string: "https://api.twitch.tv/helix/channels")!
//        public static let streamsURL = URL(string: "https://api.twitch.tv/helix/streams")!
//        public static let channels = "\(bundleID).twitchChannels"
//        public static let user = "\(bundleID).twitchUser"
//    }
//    
//    public struct YouTube {
//        public static let getChannelsURL = URL(string: "https://youtube.googleapis.com/youtube/v3/channels")!
//        public static let getVideosURL = URL(string: "https://youtube.googleapis.com/youtube/v3/videos")!
//        public static let channels = "\(bundleID).youTubeChannels"
//    }
//    
//    public struct Storage {
//        public static let twitchClientID = "\(bundleID).twitchClientID"
//        public static let twitchAccessToken = "\(bundleID).twitchAccessToken"
//        public static let streamlinkPath = "\(bundleID).streamlinkPath"
//        public static let defaultQuality = "\(bundleID).defaultQuality"
//        public static let favoriteChannels = "\(bundleID).favoriteChannels"
//        public static let channelListDisplayStyle = "\(bundleID).channelListDisplayStyle"
//        public static let enabledNotifications = "\(bundleID).enabledNotifications"
//        public static let channels = "\(bundleID).channels"
//        public static let youtubeAPIKey = "\(bundleID).youtubeAPIKey"
//    }
//    
//    public static let bundleID = "com.paulkim.StreamDex"
//}
