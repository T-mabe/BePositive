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
   
    
    var body: some View {
        
        ZStack {
            NavigationView {
                
                //            Showing stories
                
                ZStack {
                    //                    Core Interface
                    Color(eggShell)
                        .edgesIgnoringSafeArea(.all)
                    
                    ZStack {
                        
                        Image("EmptyTeeV")
                            .resizable()
                            .scaledToFit()
                        
                        Image("Sebby")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 175, height: 140 )
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            .offset(y: -76).offset(x: -25)
                            .onTapGesture {
                                withAnimation {
                                    tapped.toggle()
                                }
                            }.animation(.default, value: tapped)
                        
                    }  .frame(width: 250)
                        .padding(.top, 180)
                    
                    
                    VStack {
                        //                    Profile Icon in the top right
                        HStack {
                            NavigationLink {
                                ProfileView()
                            } label: {
                                Image(systemName: "person.crop.circle.badge.plus")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 85, height: 40)
                                    .foregroundColor(.black)
                            }
                            
                            Spacer()
                            
                        NavigationLink {
                            SettingsView()
                        } label: {
                            Image(systemName: "line.3.horizontal")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.black)
                                .padding()
                        }
                    }
                        
                        //                        Heading Text
                        Text("Be")
                            .bold()
                            .font(.system(size: 80))
                            .multilineTextAlignment(.center)
                            .padding(.top, 45)
                            .foregroundColor(.black)
                        
                        Text("Positive")
                            .bold()
                            .foregroundColor(.red)
                            .font(.system(size: 80))
                        
                        //                        Camera Icon with spacers to position
                        Spacer()
                        
                        HStack {
                            
                            Spacer()
                            
                            NavigationLink {
                               ProfileView()
                            } label: {
                                Image(systemName: "camera")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 65)
                                    .foregroundColor(.black)
                            }
                        }
                        .padding()
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

