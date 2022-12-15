//
//  Tab bar.swift
//  jad or
//
//  Created by sara on 19/05/1444 AH.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Explore")
              
                }
            
            Plan()
                .tabItem {
                    Image(systemName: "paperplane")
                        .foregroundColor(Color.red)
                    Text("Ready")
                        .foregroundColor(Color.red)
                    
                }
           Calender()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Calender")
                    
                }
            Profile()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                    
                }
            
        }
    }
    
}
struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
//        ContentView()
    }
}
