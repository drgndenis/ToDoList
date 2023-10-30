//
//  ItemModel.swift
//  ToDoList
//
//  Created by Denis DRAGAN on 29.10.2023.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String
    let title: String
    let isComplated: Bool
    
    init(id: String = UUID().uuidString, title: String, isComplated: Bool) {
        self.id = id
        self.title = title
        self.isComplated = isComplated
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isComplated: !isComplated)
    }
}
