//
//  CommentView.swift
//  Be Positive
//
//  Created by Abe Molina on 12/15/22.
//

import SwiftUI

struct CommentView: View {

    @State private var comment: String = ""
    @State var commentArray: [String] = []
    @State private var tapped = false
    @Binding public var showComment: Bool
    @Binding var storyImage: String
    var eggShell = #colorLiteral(red: 0.9302913547, green: 0.9253246188, blue: 0.916793704, alpha: 1)

    var body: some View {
        ZStack {
            NavigationView {
                ZStack {
                    Color("colors")
                        .ignoresSafeArea(.all)
                    VStack {
                        Spacer()
                        TextField("Say something nice", text: $comment)
                            .padding()
                            .background(Color.primary.opacity(0.3).cornerRadius(10))
                            .foregroundColor(.primary)
                            .font(.headline)
                        
//                        Takes you to the next story
                        
                        Button {
                            showComment = false
                            storyImage = "Lions"
                        } label: {
                            Text("Comment".uppercased())
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.black.opacity(0.8).cornerRadius(10))
                                .foregroundColor(.white)
                                .font(.headline)
                        }
                        
                        ForEach(commentArray, id: \.self) { data in
                            Text(data)
                        }
                    }
                    .padding()
                 
                    
                }
            }
        }
    }
}
