//
//  StoryBundle.swift
//  Be Positive
//
//  Created by Abe Molina on 12/15/22.
//

import Foundation

import SwiftUI

// StoryBundle Model and Sample Stories...
struct StoryBundle: Identifiable {
    var id = UUID().uuidString
    var profileName: String
    var profileImage: String
    var isSeen: Bool = false
    var stories: [Story]
}

struct Story: Identifiable {
    var id = UUID().uuidString
    var imageURL: String
}
