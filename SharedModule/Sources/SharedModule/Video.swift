//
//  File.swift
//  
//
//  Created by Paul Kim on 7/16/24.
//

import Foundation
import Observation
import SwiftData

//public protocol Video {
//
//    var url: URL? { get }
//    var channel: Channel { get }
//    var viewerCount: Int { get }
//    var startTime: Date? { get }
//    var title: String? { get }
//    var gameName: String? { get }
//    func streamlinkQualityArg(_ quality: VideoQuality) -> String
//    var chatURL: URL? { get }
//
//}

@Model
final public class Video {

    public var url: URL?
    public var channel: Channel
    public var title: String?
    public var topic: String?
    public var viewerCount: Int
    public var actualStartTime: Date?
    public var scheduledStartTime: Date?
    
//    public func streamlinkQualityArg(_ quality: VideoQuality) -> String
    public var status: VideoStatus
    public var chatURL: URL?
    
//    public enum VideoStatus: Codable {
//        case live(startedAt: Date?, viewerCounts: Int?)
//        case upcoming(scheduledFor: Date?)
//        case none
//    }
    
    public enum VideoStatus: Codable {
        case live
        case upcoming
        case none
    }
    
//    public var viewerCount: Int {
//        switch status {
//        case .live(let startedAt, let viewerCount):
//            return viewerCount
//        default:
//            return 0
//        }
//    }
    
    public init(url: URL? = nil, channel: Channel, viewerCount: Int, actualStartTime: Date? = nil, scheduledStartTime: Date? = nil, title: String? = nil, topic: String? = nil, chatURL: URL? = nil, status: VideoStatus) {
        self.url = url
        self.channel = channel
        self.viewerCount = viewerCount
        self.actualStartTime = actualStartTime
        self.scheduledStartTime = scheduledStartTime
        self.title = title
        self.topic = topic
        self.chatURL = chatURL
        self.status = status
    }
    
}

public enum VideoQuality: String, CaseIterable {
    case worst
    case p360
    case p480
    case p720
    case p1080
    case best

    public var text: String {
        switch self {
        case .worst:
            return "Worst"
        case .p360:
            return "360p"
        case .p480:
            return "480p"
        case .p720:
            return "720p"
        case .p1080:
            return "1080p"
        case .best:
            return "Best"
        }
    }
}
