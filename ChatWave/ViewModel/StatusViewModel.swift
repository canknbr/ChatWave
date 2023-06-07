//
//  StatusViewModel.swift
//  ChatWave
//
//  Created by Can Kanbur on 7.06.2023.
//





import SwiftUI


class StatusViewModel : ObservableObject{
    @Published var status : UserStatus  = .notConfigured
    
    func updateStatus(_ status : UserStatus) {
        self.status = status
    }
}


enum UserStatus: Int, CaseIterable {
    case notConfigured
    case available
    case busy
    case school
    case movies
    case work
    case batteryLow
    case meeting
    case gym
    case sleeping
    case urgentCallOnly

    var title: String {
        switch self {
        case .notConfigured : return "Not Configured"
        case .available: return "Available"
        case .busy: return "Busy"
        case .school: return "School"
        case .movies: return "Movies"
        case .work: return "Work"
        case .batteryLow: return "Battery Low"
        case .meeting: return "Meeting"
        case .gym: return "Gym"
        case .sleeping: return "Sleeping"
        case .urgentCallOnly: return "Urgent Call Only"
        
        }
    }
}
