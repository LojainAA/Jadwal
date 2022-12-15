//
//  Item.swift
//  jad or
//
//  Created by sara on 19/05/1444 AH.
//

import Foundation
struct Item: Identifiable, Codable {
    var id: Int
    var title: String
    var description: String
    var isFaved: Bool
    
    static var sampleItems: [Item] {
        var temptList = [Item]()
        let id = [9,7,8,6]
        let description = [
                           "Day1:  Winter Wonderland, Day2:The  magnificent Boulevard Riyadh City",
                           "Day1: Riyadh Zoo, Day2: high skies Day3:Grand Cafe",
                           "Day1: Little, Day2:   Winter Wonderland , Day3: Antika ",
                           "Day1:high skies , Day2:  Riyadh Zoo , Day3: Grand Cafe"]
        
        
        for i in 0...3{
           // let id = i
            let id = id[i]
            let title = "plan For \(i): "
            let description = description[i]

            temptList.append(Item(id: id, title: title, description: description, isFaved: false))
            
        }
        return temptList
    }
}
