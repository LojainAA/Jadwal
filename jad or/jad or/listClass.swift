//
//  listClass.swift
//  jad or
//
//  Created by sara on 19/05/1444 AH.
//

import SwiftUI

struct listClass: View {
    @ObservedObject var taskStore    = TaskStore()
    @State var newToDo : String = ""
        
        //--
        var searchBar : some View{
            HStack{
                TextField("write here", text:$newToDo)
                
                Button(action: self.addNewToDo,label: {Image(systemName: "plus.app")
                    .resizable().frame(width: 25.0, height: 25.0).foregroundColor(Color(red: 0.454, green: 0.745, blue: 0.406))})
                    
                
            }
        
        }
        //--
        
        
        //===
        func addNewToDo(){
            taskStore.tasks.append(Task(id:String(taskStore.tasks.count+1),toDoItem: newToDo))
                }
            
        //===
        //---
        var body: some View {
            NavigationView{
            VStack {
                searchBar.padding()
                
                List{
                    ForEach(self.taskStore.tasks){
                        task in Text(task.toDoItem)
                        
                    }
                    .onMove(perform: self.move)
                    .onDelete(perform: self.delete)
                }
                
                    .navigationBarItems(trailing: EditButton()).foregroundColor(Color(red: 0.978, green: 0.739, blue: 0.232))
                  
                //here he put the title
                }
        
              }
         }
       //------
        func move(from source : IndexSet , to destination : Int){
            
        taskStore.tasks.move(fromOffsets: source, toOffset: destination)
            
        }
        
       //------
        func delete(at offsets : IndexSet){
            taskStore.tasks.remove(atOffsets: offsets)
        }
        
        
       //------
        }


struct listClass_Previews: PreviewProvider {
    static var previews: some View {
        listClass()
    }
}
