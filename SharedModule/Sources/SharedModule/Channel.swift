//
//  File.swift
//  
//
//  Created by Paul Kim on 7/16/24.
//

import Foundation
import Observation
import SwiftUI
import SwiftData

//public protocol Channel {
//    
//    var id: String { get }
//    var name: String { get }
//    var userLogin: String { get }
//    var imageURL: URL? { get }
////    var iconBorderColor: Color { get }
//    
//    func toCacheType() -> CacheChannel
//    
//    
//    
//}

@Model
final public class Channel {
    
    @Attribute(.unique) public var id: String
    public var name: String
    public var userLogin: String
    public var platform: String
//    public var imageBackgroundColor: Color
    public var imageURL: URL?
    
    public init(
        id: String,
        name: String,
        userLogin: String,
        platform: String,
//        imageBackgroundColor: Color,
        imageURL: URL? = nil
    ) {
        self.id = id
        self.name = name
        self.userLogin = userLogin
        self.platform = platform
//        self.imageBackgroundColor = imageBackgroundColor
        self.imageURL = imageURL
    }
    
}
