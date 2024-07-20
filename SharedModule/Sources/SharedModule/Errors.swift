//
//  File.swift
//  
//
//  Created by Paul Kim on 7/16/24.
//

import Foundation

public enum DataServiceError: Error {
    case invalidURL
}

public enum ShellServiceError: Error {
    case couldNotDecodeOutput
}

public enum StreamlinkServiceError: Error {
    case invalidStreamURL
    case outputIsNotAURL(String)
}

public enum YouTubeError: Error {
    case emptyVideosResponseItems
    case emptyChannelsResponseItems
}
