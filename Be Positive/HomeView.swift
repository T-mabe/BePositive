//
//  HomeView.swift
//  Be Positive
//
//  Created by Abe Molina on 12/15/22.
//

import SwiftUI

struct HomeView: View {
    
    var eggShell = #colorLiteral(red: 0.9302913547, green: 0.9253246188, blue: 0.916793704, alpha: 1)
    @State private var showStory = false
    @State var tapped = false
    @State private var isAnimating = false
    @State var buttonText = ""
    @FocusState var isInputActive: Bool

   
    var body: some View {
        
        ZStack {
            NavigationView {
                
                //            Showing stories
                
                ZStack {
                    //                    Core Interface
                    Color("color")
                        .edgesIgnoringSafeArea(.all)
                    
                    ZStack {
                        
//                        Image("EmptyTeeV")
//                            .resizable()
//                            .scaledToFit()
                        
                        Image("Sebby")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 375, height: 540 )
                            .clipShape(RoundedRectangle(cornerRadius: 15))
//                            .offset(y: -76).offset(x: -25)
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
                        Text("Be")
                            .bold()
                            .font(.system(size: 60))
                            .multilineTextAlignment(.center)
//                            .padding(., 45)
                            .foregroundColor(.primary)
                        
                        Text("Positive")
                            .bold()
                            .foregroundColor(.red)
                            .font(.system(size: 60))
                            
                        
                        //                        Camera Icon with spacers to position
                        Spacer()
                        
                        HStack {
                            TextField("Leave a comment", text: $buttonText)
                                .foregroundColor(.primary)
                                .font(.system(size: 23))
                                .textFieldStyle(.automatic)
//                                .multilineTextAlignment(.center)
//                                .font(.headline)
                                .padding()
                                .focused($isInputActive)
                            
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

