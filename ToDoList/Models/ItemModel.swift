//
//  ItemModel.swift
//  ToDoList
//
//  Created by Denis DRAGAN on 29.10.2023.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isComplated: Bool
}
