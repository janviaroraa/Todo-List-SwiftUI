//
//  AddView.swift
//  TodoList
//
//  Created by Janvi Arora on 06/09/23.
//

import SwiftUI

struct AddView: View {
    
    @State var enteredText: String = ""
    
    var body: some View {
        
        ScrollView {
            TextField("Type something here", text: $enteredText)
                .padding(20)
                .frame(height: 100)
                .background(
                    Color(UIColor.lightGray)
                        .opacity(0.3)
                )
                .cornerRadius(15)
            
            Button(action: {
            
            }, label: {
                Text("Save")
                    .bold()
                    .padding(10)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .foregroundColor(Color.white)
                    .background(Color.accentColor)
                    .cornerRadius(15)
            })
                
        }
        .navigationTitle("Add an Item")
        .padding(15)
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
    }
}
