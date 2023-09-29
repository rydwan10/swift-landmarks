//
//  Profile.swift
//  Landmarks
//
//  Created by Muhammad Rydwan on 09/09/23.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications: Bool = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "m_rydwan")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌹"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "❄️"
        
        var id: String { rawValue }
    }
}
