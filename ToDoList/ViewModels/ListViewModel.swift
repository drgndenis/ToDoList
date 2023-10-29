//
//  ListViewModel.swift
//  ToDoList
//
//  Created by Denis DRAGAN on 29.10.2023.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
    
    init() {
        getItems() // Call the 'getItems()' function when the class is initialized.
    }
    
    func getItems() {
        let newItems = [
            ItemModel(title: "This is the first title", isComplated: true),
            ItemModel(title: "This is the second title", isComplated: false),
            ItemModel(title: "This is the third title", isComplated: true)
        ]
        
        items.append(contentsOf: newItems) // Add new items to the array.
    }
    
    func deleteItem(index: IndexSet) {
        items.remove(atOffsets: index) // Perform item deletion at the specified index.
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to) // Perform item moving from one index to another.
    }
}
