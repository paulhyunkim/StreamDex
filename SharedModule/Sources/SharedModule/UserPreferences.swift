////
////  File.swift
////  
////
////  Created by Paul Kim on 7/16/24.
////
//
//import SwiftUI
//
//public class UserPreferences: ObservableObject {
//    
//    public static let shared = UserPreferences()
//    
//    @AppStorage(Constant.Storage.streamlinkPath) public var streamlinkPath: String = "/opt/homebrew/bin/streamlink"
//    @AppStorage(Constant.Storage.defaultQuality) public var defaultQuality: VideoQuality = .best
//    @AppStorage(Constant.Storage.twitchClientID) public var twitchClientID: String = ""
//    @AppStorage(Constant.Storage.twitchAccessToken) public var twitchAccessToken: String = ""
//    @AppStorage(Constant.Storage.youtubeAPIKey) public var youtubeAPIKey: String = ""
////    @AppStorage(Constant.Storage.favoriteChannels) public var favoriteChannels: [FavoriteChannel] = []
//
//    @AppStorage(Constant.Storage.channelListDisplayStyle) public var channelListDisplayStyle: ChannelListDisplayStyle = .normal
////    @AppStorage(Constant.Storage.enabledNotifications) public var enabledNotifications: [NotificationsRule] = []
////    @AppStorage(Constant.Storage.playFavoritesOnLaunch) var playFavoritesOnLaunch: Bool
////    @AppStorage(Constant.Storage.channels) public var channels: [CacheChannel] = []
//        
//}
