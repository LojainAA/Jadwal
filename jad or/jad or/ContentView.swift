//
//  ContentView.swift
//  jad or
//
//  Created by sara on 12/05/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var ChooseaCity = false
    @State var ispresented = false
    @State private var Outdoor = true
    @State private var Educutional = false
    @State private var Indoor = false
    @State private var Shopping = false
    @State var selection = 0
    @State private var showingAlert = false
    @State var isPresented = false
    //----------
    @State var image : Image = Image("")
    @State  var name : String = ""
    @State var more : String = ""
    
    
    //==
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor =
        UIColor(Color("Color"))
    }
    //==
    var body: some View {
        VStack {
            Text("Explore Activites")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color(red: 0.451, green: 0.745, blue: 0.406))
                .padding(.bottom, 90.0)
                .shadow(color:Color(red: 0.99, green: 0.747, blue: 0.235),radius: 1, x:-3, y: 2)
            ZStack {
                HStack {
                    ZStack{
                        Rectangle()
                            .foregroundColor(Color(red: 0.592, green: 0.798, blue: 0.571, opacity: 0.972))
                        
                            .cornerRadius(50)
                            .frame(width: 311.0 , height: 32.0)
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(Color.gray)
                            .padding(.trailing, 250.0)
                        Button(action: {
                            ChooseaCity.toggle()
                            ispresented.toggle()
                        } ,label:{
                            Text("Choose a city")
                                .font(.body)
                                .fontWeight(.medium)
                                .foregroundColor(Color.white)
                        })
                    }
                    .offset(y:-50)
                }
                
            }
            .sheet(isPresented: $ispresented ){
                Search()
                .presentationDetents([.medium])  }
            VStack{Text("Hi")
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding(/*@START_MENU_TOKEN@*/.trailing, 330.0/*@END_MENU_TOKEN@*/)
                    
                Text("here is what popular in your region")
                    .padding(.trailing, 70.0)
                    
                }
                .font(.headline)
                .fontWeight(.bold)
            Picker("",selection: $selection){
                Text("Outdoor").tag(0)
                Text("Educutional").tag(1)
                Text("Indoor").tag(2)
                Text("Shopping").tag(3)
            }.padding(.bottom, 20).pickerStyle(SegmentedPickerStyle())
            
            if selection == 0 {
                var count = 0
                let outdoor = ["Winter Wonderland", "Zoo park","Boulevard Riyadh City"]
                var more1 = ["Riyadh hosts Winter Wonderland, the biggest theme park in its third season, combining rides & adventures in a unique experience for all ages.","Riyadh Zoo, founded in 1987 and currently with a new look,features more than 1300 animals from 190 species in 6 sub zones, each with its special experiences.","The magnificent Boulevard Riyadh City, is back and ready to take you beyond your imagination into its 9 majestic subzones."]
                
                ForEach(outdoor, id: \.self){ place in
                    
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 325, height: 110)
                            .foregroundColor(Color(red: 0.224, green: 0.596, blue: 0.786))
                            .cornerRadius(8)
                        
                        HStack{
                            Image("\(place)")
                            
                                .resizable()
                                .padding(0.0)
                                .frame(width: 100, height: 110)
                                .mask(RoundedRectangle(cornerRadius: 20))
                            
                            
                            VStack{
                                
                                Text("\(place)")
                                    .font(.title2)
                                    .foregroundColor(Color.white)
                                
                                
                            }
                            
                            Spacer()
                            Button {
                                image =  Image("\(place)")
                                name =  place
                                more = more1[count]
                                count = count + 1
                                isPresented = true
                            } label: {
                                Image(systemName: "ellipsis")
                                    .foregroundColor(.black)
                                
                            }.padding(.trailing, 50)
                            
                        }.padding(.leading, 30)
                        
                        
                        
                        
                        
                    }.padding(.bottom, 10.0)
                    
                    
                    
                    
                    
                }}
            if selection == 1 {
                var count = 0
                var educational = ["Mosary Arena","King Abdulaziz Equestrian Square", "Masmak Palace Museum"]
                var more1 = ["An integrated world for kids and their families involves challenging games such as Ferrari driving simulation, Play Station, trampoline, laser tag, and soft play. ","The first horse racing venue in Saudi Arabia was built 1965 in the Marat district in Riyadh. The track were too small for arranging international races, and were eventually moved to Riyadh Janadria, under supervision of Abdullah bin Abdul Aziz, the heir apparent of Saudi Arabia","Sitting in the heart of Saudi Arabia’s biggest metropolis, Riyadh, the 150-year old Al Masmak Palace serves as a museum displaying different historical artifacts, works of art, weapons, maps, and other exhibits of Saudi history.  Built in 1865"]
                ForEach(educational, id: \.self){ place in
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 325, height: 110)
                            .foregroundColor(Color(red: 0.228, green: 0.596, blue: 0.786))
                            .cornerRadius(8)
                        HStack{
                            Image("\(place)")
                            
                                .resizable()
                                .padding(0.0)
                                .frame(width: 100, height: 110)
                                .mask(RoundedRectangle(cornerRadius: 20))
                            
                            
                            
                            VStack{
                                
                                Text("\(place)")
                                    .font(.title2)
                                    .foregroundColor(Color.white)
                                
                                
                            }
                            Spacer()
                            Button {
                                image =  Image("\(place)")
                                name =  place
                                more = more1[count]
                                count = count + 1
                                isPresented = true
                            } label: {
                                Image(systemName: "ellipsis")
                                    .foregroundColor(.black)
                                
                            }.padding(.trailing, 50)
                            
                        }.padding(.leading, 30)
                        
                        
                    } .padding(.bottom,40 )
                    
                    
                    
                    
                    
                    
                }
                
                
            }
            if selection == 2 {
                var count = 0
                let indoor = ["Bowling","Keramos Studio","Bounce"]
                var more1 = ["Equally elegant and inviting, Strike Bowling Alley in Riyadh offers a family-friendly destination with a touch of luxury. The lounge-inspired setting features a billiards table, six bowling lanes and a 100-inch TV broadcasting major sporting events","Keramos is a brand concerned with the arts of ceramics and their various fields, especially those that reflect Islamic art and the Saudi folklore by Saudi craftsmanship. Keramos means bricks or bowl clay. The word Kiramos dates back to the Greek origin Keramis.","BOUNCE is a Freestyle Playground combining elements of the world’s most exciting freestyle activities in one place. Made up of wall to wall trampolines, climbing and an adventure challenge course, BOUNCE is a training ground for some of the world’s leading freestyle athletes"]
                ForEach(indoor, id: \.self){ place in
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 325, height: 110)
                            .foregroundColor(Color(red: 0.228, green: 0.596, blue: 0.786))
                            .cornerRadius(8)
                        HStack{
                            Image("\(place)")
                            
                                .resizable()
                                .padding(0.0)
                                .frame(width: 100, height: 110)
                                .mask(RoundedRectangle(cornerRadius: 20))
                            
                            
                            
                            VStack{
                                
                                Text("\(place)")
                                    .font(.title2)
                                    .foregroundColor(Color.white)
                                
                                
                            }
                            Spacer()
                            
                            Button {
                                image =  Image("\(place)")
                                name=place
                                more = more1[count]
                                count = count + 1
                                isPresented = true
                            } label: {
                                Image(systemName: "ellipsis")
                                    .foregroundColor(.black)
                                
                            }.padding(.trailing, 50)
                            
                        }.padding(.leading, 30)
                        
                        
                    } .padding(.bottom,40 )
                    
                    
                    
                    
                    
                    
                }
                
                
            }
            
            
            if selection == 3 {
                var count = 0
                let Shopping = ["Al Nakheel Mall", "Riyadh Park Mal","Granada Center"]
                var more1 = ["More than just a place to get your shopping done, Al Nakheel Mall in Riyadh is considered by many to be the most innovative mall in Saudi Arabia. Al Nakheel Mall draws more than 200,000 weekly shoppers to the visitor-friendly, one-level retail locale","This unique shopping center is the newest and largest in Riyadh city. A trendy two-floor mall, the Riyadh park shopping center featuring various stores selling luxury goods and accessories for men and women, including fashions, cosmetics, jewels, electronic appliances, and more.","Granada Mall is one of the largest commercial centers in the Kingdom of Saudi Arabia, which is located in the city of Riyadh. It includes within it the Fun Oasis (Oasis of Fun) and is the main amusement place for the entertainment area available for children of all ages, consisting of a wide range of games"]
                ForEach(Shopping, id: \.self){ place in
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 325, height: 110)
                            .foregroundColor(Color(red: 0.228, green: 0.596, blue: 0.786, opacity: 0.998))
                        HStack{
                            Image("\(place)")
                            
                                .resizable()
                                .padding(0.0)
                                .frame(width: 100, height: 110)
                                .mask(RoundedRectangle(cornerRadius: 20))
                            
                            
                            
                            VStack{
                                
                                Text("\(place)")
                                    .font(.title2)
                                    .foregroundColor(Color.white)
                                
                                
                            }
                            Spacer()
                            
                            
                            Spacer()
                            Button {
                                image =  Image("\(place)")
                                name =  place
                                more = more1[count]
                                count = count + 1
                                isPresented = true
                            } label: {
                                Image(systemName: "ellipsis")
                                    .foregroundColor(.black)
                                
                            }.padding(.trailing, 50)
                            
                        }.padding(.leading, 30)
                        
                        
                    } .padding(.bottom,40 )
                    
                    
                    
                    
                    
                    
                }
                
                
            }
            
            
            
        }
        
        .sheet(isPresented: $isPresented) {
            discription(Image: $image, name: $name, more: $more)
            
                .presentationDetents([.fraction(0.66)])


        }
        
        
        
    }
    
    
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        ContentView()
                    TabbarView()
    }
}

