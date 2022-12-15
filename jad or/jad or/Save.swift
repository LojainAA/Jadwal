//
//  Save.swift
//  jad or
//
//  Created by sara on 19/05/1444 AH.
//

import Foundation
import SwiftUI

extension Plan {
    final class ViewModel: ObservableObject {
        @Published var items = [Item]()
        @Published var showingFavs = false
        @Published var savedItems: Set<Int> = [1, 7]
        
        // Filter saved items
        var filteredItems: [Item]  {
            if showingFavs {
                return items.filter { savedItems.contains($0.id) }
            }
            return items
        }
        
        private var db = Database()
        
        init() {
            self.savedItems = db.load()
            self.items = Item.sampleItems
        }
        
        func sortFavs() {
            withAnimation() {
                showingFavs.toggle()
            }
        }
        
        func contains(_ item: Item) -> Bool {
                savedItems.contains(item.id)
            }
        
        // Toggle saved items
        func toggleFav(item: Item) {
            if contains(item) {
                savedItems.remove(item.id)
            } else {
                savedItems.insert(item.id)
            }
            db.save(items: savedItems)
        }
    }
}
