//
//  ProfileView.swift
//  Be Positive
//
//  Created by Abe Molina on 12/15/22.
//

import SwiftUI

struct ProfileView: View {
    
    var eggShell = #colorLiteral(red: 0.9695078731, green: 0.9645397067, blue: 0.9300946593, alpha: 1)
    
    var body: some View {
        NavigationView() {
            ZStack {
              
                Color(eggShell)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Button {
                        
                    } label: {
                        Image("ProfilePic")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                    }.offset(y: -300)
                        .offset(x: -125)
                    
                }
                
                HStack {
                    Text("Profile Name")
                        .font(.system(size: 30))
                        .bold()
                        .offset(y: -265)
                        .offset(x: 50)
                        .foregroundColor(.black)
                    
                }
            }
        }
    }
    
    
    
    
    struct ProfileView_Previews: PreviewProvider {
        static var previews: some View {
            ProfileView()
        }
    }
}
