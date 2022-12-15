//
//  Calender.swift
//  jad or
//
//  Created by sara on 19/05/1444 AH.
//

import SwiftUI

struct Calender: View {
    
    @State var addPlanButton = false
        @State var ispresented = false
    
    var body: some View {
        
        
        VStack() {
            Text("Calender")
                .font(.largeTitle)
                .shadow(color: Color(red : 0.99, green: 0.747, blue: 0.235), radius: 1,x:-3,y:2)
            //-----------------------            Spacer()
                .fontWeight(.heavy)
                .foregroundColor(Color(red: 0.454, green: 0.745, blue: 0.406))
                .frame(width: 200.0,height:50)
            //-----------------------
            MultiDatePicker("calender", selection: 
                .constant([])
            
             
            )
            //-----------------------
  
            
            .background(Color(red: 0.454, green: 0.745, blue: 0.406), in: RoundedRectangle(cornerRadius: 20))   .padding()
            //-----------------------
            
           Spacer() .frame(width:50)
            
            //----------------------
            
            //----------------------
           
            //----------------------
            
            Button {
                addPlanButton.toggle()
                    ispresented.toggle()
            } label: {
                
                Text("add your palns!").foregroundColor(.white)
            }
            .frame(width: 160.0, height: 50.0)
            .background(Color(red: 0.951, green: 0.424, blue: 0.368), in: RoundedRectangle(cornerRadius: 20))
            
           //.padding(.bottom, 300)
            
            //----------------
            
            
          
            
            Spacer() .frame(width:200)
            //---------------------
            
            //---------------------
            
            //---------------------
            
        }.sheet(isPresented: $ispresented ){
            listClass()
                .presentationDetents([.fraction(0.46)])
        }
      
           //-------------------
        
           //-------------------
           //-------------------
            .padding()
    }
}

struct Calender_Previews: PreviewProvider {
    static var previews: some View {
        Calender()
    }
}
