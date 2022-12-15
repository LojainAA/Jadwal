//
//  Profile.swift
//  jad or
//
//  Created by sara on 19/05/1444 AH.
//
import SwiftUI

struct Profile: View {
    @State var text: String = "Insert name..."
    @State var addPlanButton = false
    @State var ispresented = false
    
    var body: some View {
        VStack{
            Text("Profile")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color(red: 0.454, green: 0.745, blue: 0.406))
                .shadow(color: Color(red : 0.99, green: 0.747, blue: 0.235), radius: 1,x:-3,y:2)
                .padding(.top,30)
            
            
            HStack(alignment: .top){
                Image("pfp")
                    .resizable()
                    .frame(width: 85, height: 75)
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                
                
                
                TextEditor(text: $text).font(.system(size: 35))
                    .foregroundColor(Color(red: 0.45, green: 0.741, blue: 0.402))
                   // .padding(10)
                
            }
            //.padding()
            //---
            
            Button {
                addPlanButton.toggle()
                ispresented.toggle()            }
        label: {
                Text("+ Family").font(.title2).fontWeight(.medium).foregroundColor(.white).multilineTextAlignment(.center).padding(.top)
            }
            .padding(.bottom)
            .frame(width: 150.0, height: 50.0)
            .background(Color(red: 0.943, green: 0.42, blue: 0.364), in: RoundedRectangle(cornerRadius: 20))
            .padding(.bottom,500)
            
            
            //---
            
            
            
            
            //---
            
            
            //+++++++
        }.sheet(isPresented: $ispresented ){
            listClass()
                .presentationDetents([.fraction(0.60)])
            
        }
    }
        struct Profile_Previews: PreviewProvider {
            static var previews: some View {
          Profile()
            }
        }
    }

