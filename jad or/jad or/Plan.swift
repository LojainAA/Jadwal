//
//  Plan.swift
//  jad or
//
//  Created by sara on 19/05/1444 AH.
//

import Foundation
import SwiftUI
struct Plan: View {
    @StateObject private var vm = ViewModel()
    
    var body: some View {
        VStack {
            Text("Ready")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.454, green: 0.745, blue: 0.406))
                .padding(.top, 30.0)
                .shadow(color: Color(red : 0.99, green: 0.747, blue: 0.235), radius: 1,x:-3,y:2)
            Button("your  plans", action:vm.sortFavs)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.947, green: 0.424, blue: 0.368))
                .padding(.top, 70.0)
                .frame(height: 108.0)
            List {
                ForEach(vm.filteredItems) {
                    item in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(item.title)
                                .font(.headline)
                            
                            Text(item.description)
                                .font(.subheadline)
                        }
                        Spacer()
                        Image(systemName: vm.contains(item) ? "bookmark.fill" : "bookmark")
                            .foregroundColor(Color(red: 0.991, green: 0.772, blue: 0.32))
                            .onTapGesture {
                                vm.toggleFav(item: item)
                            }
                    }
                }
                
            }
            .cornerRadius(10)
        }
        .padding(.bottom, 70.0)
        
    }
}

struct Plan_Previews: PreviewProvider {
    static var previews: some View {
       Plan()
    }
}
