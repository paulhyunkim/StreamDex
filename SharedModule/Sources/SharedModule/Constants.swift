//
//  Constants.swift
//  StreamDex
//
//  Created by Paul Kim on 10/10/22.
//

import Foundation

public struct Constant {

    public struct Twitch {
        public static let oauthValidateURL = URL(string: "https://id.twitch.tv/oauth2/validate")!
        public static let followedApiURL = URL(string: "https://api.twitch.tv/helix/streams/followed")!
        public static let streamerDataURL = URL(string: "https://api.twitch.tv/helix/users")!
        public static let allFollowedURL = URL(string: "https://api.twitch.tv/helix/users/follows")!
        public static let usersURL = URL(string: "https://api.twitch.tv/helix/users")!
        public static let channelsURL = URL(string: "https://api.twitch.tv/helix/channels")!
        public static let streamsURL = URL(string: "https://api.twitch.tv/helix/streams")!
        public static let channels = "\(bundleID).twitchChannels"
        public static let user = "\(bundleID).twitchUser"
    }
    
    public struct YouTube {
        public static let getChannelsURL = URL(string: "https://youtube.googleapis.com/youtube/v3/channels")!
        public static let getVideosURL = URL(string: "https://youtube.googleapis.com/youtube/v3/videos")!
        public static let channels = "\(bundleID).youTubeChannels"
    }
    
    public struct Storage {
        public static let twitchClientID = "\(bundleID).twitchClientID"
        public static let twitchAccessToken = "\(bundleID).twitchAccessToken"
        public static let streamlinkPath = "\(bundleID).streamlinkPath"
        public static let defaultQuality = "\(bundleID).defaultQuality"
        public static let favoriteChannels = "\(bundleID).favoriteChannels"
        public static let channelListDisplayStyle = "\(bundleID).channelListDisplayStyle"
        public static let enabledNotifications = "\(bundleID).enabledNotifications"
        public static let channels = "\(bundleID).channels"
        public static let youtubeAPIKey = "\(bundleID).youtubeAPIKey"
    }
    
    public static let bundleID = "com.paulkim.StreamDex"
}

public enum NotificationsRule: Int, Codable {
    case favoritesWentLive
    case favoritesWentOffline
}

//typealias EnabledNotifications = [NotificationsRule]

//extension EnabledNotifications: RawRepresentable {
    
//    init?(rawValue: String) {
//        self.
//    }
//
//
//    var rawValue: Self.RawValue { get }
    
//    public init?(rawValue: String) {
//        guard let data = rawValue.data(using: .utf8),
//            let result = try? JSONDecoder().decode(EnabledNotifications.self, from: data)
//        else {
//            return nil
//        }
//        self = result
//    }
//
//    public var rawValue: String {
//        guard let data = try? JSONEncoder().encode(self),
//            let result = String(data: data, encoding: .utf8)
//        else {
//            return "[]"
//        }
//        return result
//    }
//}

//enum StreamQuality: String, CaseIterable {
//    case worst
//    case p360
//    case p480
//    case p720
//    case p1080
//    case best
//
//    var text: String {
//        switch self {
//        case .worst:
//            return "Worst"
//        case .p360:
//            return "360p"
//        case .p480:
//            return "480p"
//        case .p720:
//            return "720p"
//        case .p1080:
//            return "1080p"
//        case .best:
//            return "Best"
//        }
//    }
//}

public enum ChannelListDisplayStyle: String, CaseIterable {
    case compact
    case normal
}

//extension StreamQuality: RawRepresentable {
//    public init?(rawValue: String) {
//        guard let data = rawValue.data(using: .utf8),
//              let result = try? JSONDecoder().rawValue.decode(StreamQuality.self, from: data)
//        else {
//            return nil
//        }
//        self = result
//    }
//
//    public var rawValue: String {
//        guard let data = try? JSONEncoder().encode(self),
//            let result = String(data: data, encoding: .utf8)
//        else {
//            return "[]"
//        }
//        return result
//    }
//}
