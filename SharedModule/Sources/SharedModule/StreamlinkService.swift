//
//  File.swift
//  
//
//  Created by Paul Kim on 7/16/24.
//

import Foundation

public struct StreamlinkService {
    
    let path = "/opt/homebrew/bin/streamlink"
    
    public init() { }
    
    public func url(for stream: Video, quality: VideoQuality = .best, args: [String]) async throws -> URL {
        guard let url = stream.url else {
            throw StreamlinkServiceError.invalidStreamURL
        }
        
//        let qualityArg = stream.streamlinkQualityArg(quality)

        return try await withCheckedThrowingContinuation { continuation in
            let args: [String] = [url.absoluteString, quality.rawValue, "--stream-url"] + args
            Task {
                do {
                    let shell = ShellService()
                    let output = try await shell.execute(path: path, args: args)
//                    let output = try await ShellService().execute(command).trimmingCharacters(in: .whitespacesAndNewlines)
                    if let url = URL(string: output) {
                        continuation.resume(returning: url)
                    } else {
                        continuation.resume(throwing: StreamlinkServiceError.outputIsNotAURL(output))
                    }
                }
            }
        }
    }
    
}

