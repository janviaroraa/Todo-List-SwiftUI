//
//  ListRowView.swift
//  TodoList
//
//  Created by Janvi Arora on 06/09/23.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.completed ? "checkmark.circle" : "circle")
                .foregroundColor(item.completed ? Color.green : Color.red)
            Text(item.title)
            Spacer()
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static var item1: ItemModel = ItemModel(title: "List row title 1", completed: false)
    static var item2: ItemModel = ItemModel(title: "List row title 2", completed: false)
    static var item3: ItemModel = ItemModel(title: "List row title 3", completed: true)
    
    static var previews: some View {
        Group {
            ListRowView(item: item1)
            ListRowView(item: item2)
            ListRowView(item: item3)
        }
        .previewLayout(.sizeThatFits)
    }
}
