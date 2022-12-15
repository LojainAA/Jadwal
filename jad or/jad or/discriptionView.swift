//
//  discriptionView.swift
//  jad or
//
//  Created by sara on 19/05/1444 AH.
//
import SwiftUI

struct discription : View{
    
    
    @Binding var Image : Image
    @Binding var name : String
    @Binding var more : String
    
    var body: some View {
        ZStack{
//
//            Color(red: 0.951, green: 0.424, blue: 0.368)
//                .ignoresSafeArea()
            VStack{
                
                Image.resizable().frame(width: 200, height: 110)
                    .mask(RoundedRectangle(cornerRadius: 20))
                Text("\(name)").font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.951, green: 0.424, blue: 0.368))
                
                Text("\(more)").foregroundColor(Color.white)
                    . frame(width: 375, height: 150)
                    .background(Color(red: 0.951, green: 0.424, blue: 0.368), in: RoundedRectangle(cornerRadius: 20))
                    
                
                
            }
        }
}
}
