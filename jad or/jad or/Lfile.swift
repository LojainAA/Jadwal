//
//  Lfile.swift
//  jad or
//
//  Created by sara on 19/05/1444 AH.
//

import Foundation

import Combine

struct Task :Identifiable{
    var id = String()
    var toDoItem = String()
    
}

class TaskStore : ObservableObject {
    @Published var tasks = [Task]()
}
