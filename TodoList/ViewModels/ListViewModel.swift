//
//  ListViewModel.swift
//  TodoList
//
//  Created by Janvi Arora on 07/09/23.
//

import Foundation

class ListViewModel {
    
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [
            ItemModel(title: "new todo 1", completed: true),
            ItemModel(title: "new todo 2", completed: true),
            ItemModel(title: "new todo 3", completed: false)
        ]
        items.append(contentsOf: newItems)
    }
    
}
