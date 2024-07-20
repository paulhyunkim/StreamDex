//
//  File.swift
//  
//
//  Created by Paul Kim on 7/17/24.
//

import Foundation

struct TwitchUser: Codable {
    
    var id: String
    var userName: String
    var clientID: String
    var expiresIn: Int
    
    enum CodingKeys: String, CodingKey {
        case id = "user_id"
        case userName = "login"
        case clientID = "client_id"
        case expiresIn = "expires_in"
    }
    
}
