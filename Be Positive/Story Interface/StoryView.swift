//
//  StoryView.swift
//  Be Positive
//
//  Created by Abe Molina on 12/15/22.
//

import SwiftUI

struct StoryView: View {
    
    @StateObject var story: StoryViewModel = StoryViewModel()
    @State var showComment = false
    @State var show = false
    @State var storyImage = "Sebby"
    
    var body: some View {
        ZStack {
            
            Color.black
                .ignoresSafeArea(.all)
//Main Image
                
                Image(storyImage)
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
        
                    Button {
                        showComment.toggle()
                    } label: {
                        Image(systemName: "message")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height:30)
                            .foregroundColor(.white)
                    }.offset(y:-250).offset(x: 190)
                    .sheet(isPresented: $showComment) {
                        CommentView(showComment: $showComment, storyImage: $storyImage)
                    }
            
            
            VStack {
                Loader(show: self.$show)
                  Spacer()
                    .padding()
            }
                
      
                    
                
        }
    }
}



// Progress Loader Bar

struct Loader: View {
    
    @State var width: CGFloat = 100
    @Binding var show: Bool
    var time = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    @State var secs: CGFloat = 0
    
    var body: some View {
        ZStack(alignment: .leading) {
            
            Rectangle()
                .fill(Color.white.opacity(0.6))
                .frame(height: 3)
            
            Rectangle()
                .fill(Color.white)
                .frame(width: self.width, height: 3)
        } 
        .onReceive(self.time) { (_) in
            
            self.secs += 0.1
            
            if secs <= 6 {
                
                let screenWidth = UIScreen.main.bounds.width
                self.width = screenWidth * (self.secs / 6)
            } else {
                
                self.show = false
            }
            
            
        }
        
    } 
} 
struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
