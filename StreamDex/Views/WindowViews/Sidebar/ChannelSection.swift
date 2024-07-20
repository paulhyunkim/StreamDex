//
//  ChannelsListSection.swift
//  StreamDex
//
//  Created by Paul Kim on 10/16/22.
//

import SwiftUI
import SharedModule

struct LiveChannelListSection<Title: View>: View {
    
    @EnvironmentObject var appState: AppState
    
    var streams: [Video]
    @ViewBuilder var title: Title
    
    var body: some View {
        Section {
            ForEach(streams, id: \.channel.id) { stream in
                LiveChannelListItem(stream: stream)
            }
        } header: {
            title
                .padding(.bottom, 6)
        }
    }
}

struct ScheduledChannelListSection<Title: View>: View {
    
    @EnvironmentObject var appState: AppState
    
    var streams: [Video]
    @ViewBuilder var title: Title
    
    var body: some View {
        Section {
            ForEach(streams, id: \.channel.id) { stream in
                ScheduledChannelListItem(stream: stream)
            }
        } header: {
            title
                .padding(.bottom, 6)
        }
    }
}

struct OfflineChannelListSection<Title: View>: View {
    
    @EnvironmentObject var appState: AppState
    var channels: [Channel]
    @ViewBuilder var title: Title
    
    var body: some View {
        Section {
            ForEach(channels, id: \.id) { channel in
                OfflineChannelListItem(channel: channel)
            }
        } header: {
            title
                .padding(.bottom, 6)
        }
    }
    
}
