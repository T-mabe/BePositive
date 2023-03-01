//
//  SettingsView.swift
//  Be Positive
//
//  Created by Abe Molina on 12/16/22.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Profile")) {
                    NavigationLink(destination: ProfileView()) {
                        HStack {
                            Image("ProfilePic")
                                .resizable()
                                .frame(width: 50, height: 30)
                                .clipShape(Circle())
                            Text("Edit Profile")
                        }
                    }
                }
                Section(header: Text("Preferences")) {
                    NavigationLink(destination: PreferencesView()) {
                        Text("Edit Preferences")
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("Settings")
        }
        .background(Color.yellow)
    }
}

//struct ProfileView: View {
//    var body: some View {
//        Text("Profile view")
//    }
//}

struct PreferencesView: View {
    var body: some View {
        Text("Preferences view")
    }
}


struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

