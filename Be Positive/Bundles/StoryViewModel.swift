//
//  StoryViewModel.swift
//  Be Positive
//
//  Created by Abe Molina on 12/15/22.
//

import Foundation
import SwiftUI

@MainActor class StoryViewModel: ObservableObject {
    
    //    List of Stories...
    @Published var stories : [StoryBundle] = [
        
        StoryBundle(profileName: "Abe", profileImage: "ProfilePic", stories: [
            
            Story(imageURL: "ProfilePic")
         
        ])
        
    ]
    
    @Published var showStory: Bool = false
}

struct StoryContentView: View {
    @StateObject var data = StoryViewModel()
    
    var body: some View {
        VStack {

        }
        .environmentObject(data)
    }
}
