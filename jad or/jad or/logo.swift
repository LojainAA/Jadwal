//
//  logo.swift
//  jad or
//
//  Created by sara on 20/05/1444 AH.
//

import SwiftUI

struct logo: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            ZStack{
                (Color(red:0.2283955216, green: 0.5960937142, blue: 0.7818841338))
                    .ignoresSafeArea()
                VStack {
                    VStack {
                            Image("Logo")
                                .resizable(capInsets: EdgeInsets(top: -10.0, leading: 0.0, bottom: -10.0, trailing: 0.0))
                                .foregroundColor(Color(red: 0.228, green: 0.596, blue: 0.786))
                                .frame(width: 206.0, height: 82.0)
                        
                        }
                        
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.2)) {
                            self.size = 1.3
                            self.opacity = 1.0
                        }
                    }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        withAnimation {
                            self.isActive = true
                            
                        }
                    }
                }
                }
            }
        }
    }
struct logo_Previews: PreviewProvider {
    static var previews: some View {
        logo()
    }
 }

