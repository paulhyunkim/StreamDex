//
//  ChannelsListItem.swift
//  StreamDex
//
//  Created by Paul Kim on 10/16/22.
//

import SwiftUI
import URLImage
import SharedModule
import YouTubePlugin

struct ChannelListItemAvatar: View {
    
    var channel: Channel
    
    var body: some View {
        Circle()
            .fill(fillColor)
            .frame(width: 34, height: 34)
            .overlay {
                if let imageURL = channel.imageURL {
                    URLImage(imageURL) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    }
                    .frame(width: 30, height: 30)
                    .cornerRadius(100)
                }
            }
    }
    
    var fillColor: Color {
//        return channel.imageBackgroundColor
        switch channel.platform {
        case "youtube":
            return .red
        case "twitch":
            return .purple
        default:
            return .yellow
        }
    }
    
}

struct LiveChannelListItem: View {
    
    @EnvironmentObject var appState: AppState
    var stream: Video
    @State var onHover: Bool = false
    
    var body: some View {
        Button {
            if appState.isPlaying(stream: stream) {
                appState.execute(.focusStream(stream))
            } else {
                appState.execute(.playStream(stream))
            }
        } label: {
            ChannelButtonLabel(stream: stream)
        }
        .animation(.interactiveSpring(), value: onHover)
//        .onDrag {
//            return NSItemProvider()
//        }
//        .onHover { onHover = $0 }
        // TODO: currently broken
        .contextMenu {
            Button {
                if stream.channel.isFavorited {
                    appState.execute(.unfavoriteChannel(stream.channel))
                } else {
                    appState.execute(.favoriteChannel(stream.channel))
                }
            } label: {
                if stream.channel.isFavorited {
                    Text("Unfavorite")
                } else {
                    Text("Favorite")
                }
            }
        }
    }
    
    struct ChannelButtonLabel: View {
        
        @EnvironmentObject var appState: AppState
        var stream: Video
//        @ObservedObject var userPreferences = UserPreferences.shared
        @Environment(\.clock) var clock
//        @State var onHover: Bool = false
        
        var body: some View {
            HStack {
                ChannelListItemAvatar(channel: stream.channel)
                VStack(alignment: .leading, spacing: 0) {
                    HStack(spacing: 4) {
                        Text(stream.channel.name)
                            .lineLimit(1)
                            .multilineTextAlignment(.leading)
//                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.headline)
                        if stream.channel.isFavorited {
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                        }
                        Spacer()
                        Text(String(stream.viewerCount.abbreviated))
                            .font(.subheadline)
                    }
                    .foregroundColor(.primary)
                    .padding(.bottom, 2)
                    
                    Group {
                        if let topic = stream.topic {
                            HStack {
                                Text(topic)
                                    .font(.callout)
                                    .bold()
                                    .lineLimit(1)
                                    .multilineTextAlignment(.leading)
                                    .truncationMode(.tail)
                                    .padding(.bottom, 2)
                                
//                                if let uptime = clock.uptime(for: stream.startTime) {
//                                    Spacer()
//                                    Text(uptime)
//                                        .font(.subheadline)
//                                }
                            }
                        }
                        
                        if let title = stream.title/*, userPreferences.channelListDisplayStyle == .normal*/ {
                            Text(title)
                                .font(.caption)
                                .italic()
                                .lineLimit(1)
                                .multilineTextAlignment(.leading)
                                .truncationMode(.tail)
                        }
                    }
                    //                .onHover { onHover = $0 }
                    //                .opacity(onHover ? 1 : 0.5)
                    .padding(.trailing, 5)
                    .foregroundColor(.secondary)
                }
            }
//            .contextMenu {
//                Button {
//                    if stream.channel.isFavorited {
//                        appState.execute(.unfavoriteChannel(stream.channel))
//                    } else {
//                        appState.execute(.favoriteChannel(stream.channel))
//                    }
//                } label: {
//                    if stream.channel.isFavorited {
//                        Text("Unfavorite")
//                    } else {
//                        Text("Favorite")
//                    }
//                }
//            }
        }
        
    }
}

struct ScheduledChannelListItem: View {
    
    @EnvironmentObject var appState: AppState
    var stream: Video
    @State var onHover: Bool = false
    
    var body: some View {
        Button {
//            if appState.isPlaying(stream: stream) {
//                appState.execute(.focusStream(stream))
//            } else {
//                appState.execute(.playStream(stream))
//            }
        } label: {
            ChannelButtonLabel(stream: stream)
        }
        .animation(.interactiveSpring(), value: onHover)
//        .onDrag {
//            return NSItemProvider()
//        }
//        .onHover { onHover = $0 }
        // TODO: currently broken
        .contextMenu {
            Button {
                if stream.channel.isFavorited {
                    appState.execute(.unfavoriteChannel(stream.channel))
                } else {
                    appState.execute(.favoriteChannel(stream.channel))
                }
            } label: {
                if stream.channel.isFavorited {
                    Text("Unfavorite")
                } else {
                    Text("Favorite")
                }
            }
        }
    }
    
    struct ChannelButtonLabel: View {
        
        @EnvironmentObject var appState: AppState
        var stream: Video
//        @ObservedObject var userPreferences = UserPreferences.shared
        @Environment(\.clock) var clock
//        @State var onHover: Bool = false
        
        let dateFormatter: DateFormatter = {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "MM/dd, hh:mm a"
            dateFormatter.timeZone = .current
            return dateFormatter
        }()
        
        var body: some View {
            HStack {
                ChannelListItemAvatar(channel: stream.channel)
                VStack(alignment: .leading, spacing: 0) {
                    HStack(spacing: 4) {
                        Text(stream.channel.name)
                            .lineLimit(1)
                            .multilineTextAlignment(.leading)
//                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.headline)
                        if stream.channel.isFavorited {
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                        }
                        Spacer()
                        Text(dateFormatter.string(from: stream.scheduledStartTime!))
                            .font(.subheadline)
                    }
                    .foregroundColor(.primary)
                    .padding(.bottom, 2)
                    
                    Group {
                        if let topic = stream.topic {
                            HStack {
                                Text(topic)
                                    .font(.callout)
                                    .bold()
                                    .lineLimit(1)
                                    .multilineTextAlignment(.leading)
                                    .truncationMode(.tail)
                                    .padding(.bottom, 2)
                                
//                                if let uptime = clock.uptime(for: stream.startTime) {
//                                    Spacer()
//                                    Text(uptime)
//                                        .font(.subheadline)
//                                }
                            }
                        }
                        
                        if let title = stream.title/*, userPreferences.channelListDisplayStyle == .normal*/ {
                            Text(title)
                                .font(.caption)
                                .italic()
                                .lineLimit(1)
                                .multilineTextAlignment(.leading)
                                .truncationMode(.tail)
                        }
                    }
                    //                .onHover { onHover = $0 }
                    //                .opacity(onHover ? 1 : 0.5)
                    .padding(.trailing, 5)
                    .foregroundColor(.secondary)
                }
            }
//            .contextMenu {
//                Button {
//                    if stream.channel.isFavorited {
//                        appState.execute(.unfavoriteChannel(stream.channel))
//                    } else {
//                        appState.execute(.favoriteChannel(stream.channel))
//                    }
//                } label: {
//                    if stream.channel.isFavorited {
//                        Text("Unfavorite")
//                    } else {
//                        Text("Favorite")
//                    }
//                }
//            }
        }
        
    }
}

struct OfflineChannelListItem: View {
    
    @EnvironmentObject var appState: AppState
    var channel: Channel
    @State var onHover: Bool = false
    
    var body: some View {
        HStack {
            ChannelListItemAvatar(channel: channel)
            VStack(alignment: .leading, spacing: 0) {
                HStack(spacing: 4) {
                    //                if channel.isFavorited {
                    //                    Image(systemName: "star.fill")
                    //                        .foregroundColor(.yellow)
                    //                }
                    Text(channel.name)
                        .font(.body)
                    if channel.isFavorited {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    }
                }
                .foregroundColor(.secondary)
                .padding(.bottom, 2)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .contextMenu {
                Button {
                    if channel.isFavorited {
                        appState.execute(.unfavoriteChannel(channel))
                    } else {
                        appState.execute(.favoriteChannel(channel))
                    }
                } label: {
                    if channel.isFavorited {
                        Text("Unfavorite")
                    } else {
                        Text("Favorite")
                    }
                }
            }
            .animation(.interactiveSpring(), value: onHover)
            //        .onHover { onHover in
            //            self.onHover = onHover
            //        }
        }
    }
}
