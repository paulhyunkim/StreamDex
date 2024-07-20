//
//  File.swift
//  
//
//  Created by Paul Kim on 7/16/24.
//

import Foundation
import SharedModule

//struct TwitchStream: Video {
////    static func == (lhs: TwitchStream, rhs: TwitchStream) -> Bool {
////        lhs.url == rhs.url
////    }
////
//    
//    var userName: String
//    var userID: String
//    var userLogin: String
//    var viewerCount: Int
//    var gameName: String?
//    var title: String?
//    var startTime: Date?
//    var url: URL? {
//        return URL(string: "https://www.twitch.tv/\(userLogin)")
//    }
//    var chatURL: URL? {
//        return URL(string: "https://www.twitch.tv/popout/\(userLogin)/chat")
//    }
//    
//    var channel: Channel
//    
////    init(item: TwitchStreamItem, channel: Channel) {
////        self.userName = item.user_name
////        self.userID = item.user_id
////        self.viewerCount = item.viewer_count
////        self.gameName = item.game_name
////        self.title = item.title
////        self.startTime = item.started_at
////        self.userLogin = item.user_login
////        self.channel = channel
////    }
////    
////    init(streamData: GetTwitchStreamsResponse.Data, channel: Channel) {
////        self.userName = streamData.user_name
////        self.userID = streamData.user_id
////        self.viewerCount = streamData.viewer_count
////        self.gameName = streamData.game_name
////        self.title = streamData.title
////        self.startTime = streamData.started_at
////        self.channel = channel
////        self.userLogin = channel.userLogin
////    }
////    
////    func streamlinkQualityArg(_ quality: VideoQuality) -> String {
////        switch quality {
////        case .worst: return "worst"
////        case .p360:  return "360p"
////        case .p480:  return "480p"
////        case .p720:  return "720p60"
////        case .p1080: return "1080p60"
////        case .best:  return "best"
////        }
////    }
//}

//extension TwitchStream {
//    func getChatURL() -> URL? {
//        return URL(string: "https://www.twitch.tv/popout/\(userName)/chat")
//    }
//
////    static func == (lhs: TwitchStream, rhs: TwitchStream) -> Bool {
////        return lhs.url == rhs.url
////    }
//}


extension Video {
    
    convenience init(item: TwitchStreamItem, channel: Channel) {
        self.init(
            url: URL(string: "https://www.twitch.tv/\(item.user_login)"),
            channel: channel,
            viewerCount: item.viewer_count,
            actualStartTime: item.started_at,
            scheduledStartTime: nil,
            title: item.title,
            topic: item.game_name,
            chatURL: URL(string: "https://www.twitch.tv/popout/\(item.user_login)/chat"),
            status: .live
        )
    }
    
    convenience init(streamData: GetTwitchStreamsResponse.Data, channel: Channel) {
        self.init(
            url: URL(string: "https://www.twitch.tv/\(channel.userLogin)"),
            channel: channel,
            viewerCount: streamData.viewer_count,
            actualStartTime: streamData.started_at,
            scheduledStartTime: nil,
            title: streamData.title,
            topic: streamData.game_name,
            chatURL: URL(string: "https://www.twitch.tv/popout/\(channel.userLogin)/chat"),
            status: .live
        )
    }
    
}
