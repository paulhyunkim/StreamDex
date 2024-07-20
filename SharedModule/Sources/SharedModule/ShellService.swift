//
//  File.swift
//  
//
//  Created by Paul Kim on 7/16/24.
//

import Foundation
import OSLog

public struct ShellService {
    
    public init() { }
    
//    public func execute(_ command: String) throws -> String {
//        process.standardOutput = pipe
//        process.standardError = pipe
//        process.arguments = ["-c", command]
//        process.launchPath = "/bin/zsh"
//        process.launch()
//
//        let data = pipe.fileHandleForReading.readDataToEndOfFile()
//        if let output = String(data: data, encoding: .utf8) {
//            return output
//        } else {
//            throw ShellServiceError.couldNotDecodeOutput
//        }
//    }
    
    public func execute(_ command: String) async throws -> String {
        let process = Process()
        let standardOutputPipe = Pipe()
        let standardErrorPipe = Pipe()
        process.standardOutput = standardOutputPipe
        process.standardError = standardErrorPipe
        process.arguments = ["-c", command]
        process.executableURL = URL(fileURLWithPath: "/bin/zsh") //<--updated
        
//        let url = args.first!
        
        do {
            try process.run()
            process.waitUntilExit()
            
            let output = try await withCheckedThrowingContinuation { continuation in
                standardOutputPipe.fileHandleForReading.readabilityHandler = { fileHandle in
                    let data = fileHandle.availableData
                    guard !data.isEmpty else {
//                        Logger.statistics.error("received empty output")
                        return
                    }
                    let output = String(data: data, encoding: .utf8)!
                    continuation.resume(returning: output)
//                    process.suspend()
                    try! standardOutputPipe.fileHandleForReading.close()
                    try! standardErrorPipe.fileHandleForReading.close()
                }
                
                standardErrorPipe.fileHandleForReading.readabilityHandler = { fileHandle in
                    let data = fileHandle.availableData
                    guard !data.isEmpty else {
//                        Logger.statistics.error("received empty output")
                        return
                    }
                    let output = String(data: data, encoding: .utf8)!
                    continuation.resume(returning: output)
//                    process.suspend()
                    try! standardOutputPipe.fileHandleForReading.close()
                    try! standardErrorPipe.fileHandleForReading.close()
                }
                
//                process.terminationHandler = { process in
//                    print("[ShellService]", url, "process terminated", process.terminationReason.rawValue == 1 ? "exit" : "uncaughtSignal")
//                }
            }
            
            try standardOutputPipe.fileHandleForReading.close()
            try standardErrorPipe.fileHandleForReading.close()
            process.suspend()
            
//            Logger.shellService.debug(
//                """
//                Input: \(command)
//                Output: \(output)
//                """
//            )
            return output
        } catch {
//            Logger.shellService.error("Received error for command \(command)")
            throw error
        }
    }
    
    public func execute(path: String, args: [String]) async throws -> String {
        let process = Process()
        let standardOutputPipe = Pipe()
        let standardErrorPipe = Pipe()
        process.standardOutput = standardOutputPipe
        process.standardError = standardErrorPipe
        process.arguments = args
        process.executableURL = URL(fileURLWithPath: path)
        
        let url = args.first!
        
        do {
            try process.run()
            process.waitUntilExit()
            
            let output = try await withCheckedThrowingContinuation { continuation in
                standardOutputPipe.fileHandleForReading.readabilityHandler = { fileHandle in
                    let data = fileHandle.availableData
                    guard !data.isEmpty else {
//                        Logger.statistics.error("received empty output")
                        return
                    }
                    let output = String(data: data, encoding: .utf8)!
                    continuation.resume(returning: output)
//                    process.suspend()
                    try! standardOutputPipe.fileHandleForReading.close()
                    try! standardErrorPipe.fileHandleForReading.close()
                }
                
                standardErrorPipe.fileHandleForReading.readabilityHandler = { fileHandle in
                    let data = fileHandle.availableData
                    guard !data.isEmpty else {
//                        Logger.statistics.error("received empty output")
                        return
                    }
                    let output = String(data: data, encoding: .utf8)!
                    continuation.resume(returning: output)
//                    process.suspend()
                    try! standardOutputPipe.fileHandleForReading.close()
                    try! standardErrorPipe.fileHandleForReading.close()
                }
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
                    if process.isRunning {
                        try! standardOutputPipe.fileHandleForReading.close()
                        try! standardErrorPipe.fileHandleForReading.close()
                        process.suspend()
                        continuation.resume(throwing: ShellServiceError.couldNotDecodeOutput)
                    }
                }
//                process.terminationHandler = { process in
//                    print("[ShellService]", url, "process terminated", process.terminationReason.rawValue == 1 ? "exit" : "uncaughtSignal")
//                }
            }
            
            try standardOutputPipe.fileHandleForReading.close()
            try standardErrorPipe.fileHandleForReading.close()
            process.suspend()
            
//            Logger.shellService.debug(
//                """
//                Input: \(path) \(args.joined(separator: " "))
//                Output: \(output)
//                """
//            )
            return output
        } catch {
//            Logger.shellService.error("Received error for command \(path) \(url) \(args)")
            throw error
        }
    }
}
