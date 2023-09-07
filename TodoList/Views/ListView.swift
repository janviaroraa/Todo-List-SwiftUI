//
//  ListView.swift
//  TodoList
//
//  Created by Janvi Arora on 06/09/23.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
        ItemModel(title: "todo 1", completed: true),
        ItemModel(title: "todo 2", completed: true),
        ItemModel(title: "todo 3", completed: false)
    ]
    
    var body: some View {
        List {
//            Because we already have an id now in our model, we don't need to use id in params
            
//            ForEach(items, id: \.self) { item in
//                ListRowView(title: item)
//            }
            
            ForEach(items) { item in
                ListRowView(item: item)
            }
            .onDelete(perform: deleteItem)
            .onMove(perform: moveItem)
            
        }
        .navigationTitle("Todo List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: {
                AddView()
            })
        )
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}
