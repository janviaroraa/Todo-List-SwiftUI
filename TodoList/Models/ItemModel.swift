//
//  ItemModel.swift
//  TodoList
//
//  Created by Janvi Arora on 06/09/23.
//

import Foundation

/// If we want to iterate through a ForEach loop, we should conform it to `Identifiable` protocol

struct ItemModel: Identifiable {
    
    /// var id: ObjectIdentifier - default
    
    let id: String = UUID().uuidString
    
    let title: String
    let completed: Bool
}
