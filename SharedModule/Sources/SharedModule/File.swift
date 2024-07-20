//
//  File.swift
//  
//
//  Created by Paul Kim on 7/18/24.
//

import Foundation
import OSLog

extension Logger {
    /// Using your bundle identifier is a great way to ensure a unique identifier.
//    private static var subsystem = Bundle.main.bundleIdentifier!

    /// Logs the view cycles like a view that appeared.
    static let shellService = Logger(subsystem: "SharedModule", category: "ShellService")
    
    /// All logs related to tracking and analytics.
//    static let statistics = Logger(subsystem: "SharedModule", category: "statistics")
    
    
}
