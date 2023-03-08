//
//  HomeView.swift
//  Be Positive
//
//  Created by Abe Molina on 12/15/22.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showStory = false
    @State var tapped = false
    @State private var isAnimating = false
    @State var buttonText = ""
    @FocusState var isInputActive: Bool
    
//    Comment Variables
    @State var showComment = false
    @State var show = false
    @State var storyImage = "Sebby"
    
    var body: some View {
        
        ZStack {
            NavigationView {
                
                //            Showing stories
                
                ZStack {
                    //                    Core Interface
                    Color("color")
                        .edgesIgnoringSafeArea(.all)
                    
                    ZStack {
                        
                        Image("Sebby")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 375, height: 540 )
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            .onTapGesture {
                                withAnimation {
                                    tapped.toggle()
                                }
                            }.animation(.default, value: tapped)
                        
                        Spacer()
                        
                    }  .frame(width: 250)
                        .padding(.top, 180)
                    
                    VStack {
                        //                    Profile Icon in the top right
                        HStack {
                            NavigationLink {
                                ProfileView()
                            } label: {
                                Image(systemName: "plus")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 85, height: 25)
                                    .foregroundColor(.primary)
                            }
                            
                            Spacer()
                            
                            NavigationLink {
                                SettingsView()
                            } label: {
                                Image(systemName: "line.3.horizontal")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(.primary)
                                    .padding()
                            }
                        }
                        
                        //                        Heading Text
                        Text("Spread")
                            .bold()
                            .font(.system(size: 55))
                            .multilineTextAlignment(.leading)
                        //                            .padding(., 45)
                            .foregroundColor(.primary)
                        
                        
                        Text("Positivity")
                            .bold()
                            .foregroundColor(.red)
                            .font(.system(size: 55))
                        
                        
                        //                        Camera Icon with spacers to position
                        Spacer()
                        
                        HStack {
                            
                            Button {
                                showComment.toggle()
                            } label: {
                                Text("Leave a comment")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 23))
                                    .textFieldStyle(.automatic)
                                    .padding()
                            }.sheet(isPresented: $showComment) {
                                CommentView(showComment: $showComment, storyImage: $storyImage)
                            }
                           
                            //                            TextField("Leave a comment", text: $buttonText)
                            //                                .foregroundColor(.primary)
                            //                                .font(.system(size: 23))
                            //                                .textFieldStyle(.automatic)
                            ////                                .multilineTextAlignment(.center)
                            ////                                .font(.headline)
                            //                                .padding()
                            //                                .focused($isInputActive)
                            
                            Spacer()
                            
                            NavigationLink {
                                ProfileView()
                            } label: {
                                Image(systemName: "camera")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 45)
                                    .foregroundColor(.primary)
                            }
                        }
                        .padding(.horizontal, 30)
                    }
                    
                    //                    This needs to be cleaned up
                    ZStack {
                        if !tapped {
                            
                        } else {
                            StoryView(storyImage: "Sebby")
                                .background(Color.gray)
                        }
                    }
                    .onTapGesture {
                        withAnimation {
                            tapped.toggle()
                        }
                    }.animation(.easeInOut(duration: 0.3), value: tapped)
                    
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

