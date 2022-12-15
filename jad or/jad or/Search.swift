//
//  Search.swift
//  jad or
//
//  Created by sara on 19/05/1444 AH.
//

import SwiftUI

struct  Search: View {
    private var listOfContry = countryList
    @State var searchText = ""
    var body: some View {
        NavigationView {
            VStack{
                List {
                    ForEach(countries, id: \.self) { country in
                        HStack {
                            Text(country.capitalized)
                                .foregroundColor(Color(red: 0.437, green: 0.717, blue: 0.392))
                            Spacer()
                            
                        }
                        .padding()
                    }
                    
                    
                }
                .searchable(text: $searchText)
                .navigationTitle("Countries")
                
              
                
                
            }
            
        }
    }
        var countries: [String] {
            let lcCountries = listOfContry.map { $0.lowercased()}
            
            return searchText == "" ? lcCountries : lcCountries.filter {
                $0.contains(searchText.lowercased())
            }
        }
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                Search()
            }
        }
    
}

