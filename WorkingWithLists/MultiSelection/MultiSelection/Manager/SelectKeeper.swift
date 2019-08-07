//
//  SelectKeeper.swift
//  MultiSelection
//
//  Created by Tien Le P. on 8/7/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

//Thanks for https://stackoverflow.com/questions/56706188/how-does-one-enable-selections-in-swiftuis-list
struct SelectKeeper: SelectionManager {
    var selections = Set<String>()
    
    mutating func select(_ value: String) {
        if !allowsMultipleSelection {
            selections.removeAll()
        }
        selections.insert(value)
    }
    
    mutating func deselect(_ value: String) {
        selections.remove(value)
    }
    
    mutating func toggle(_ value: String) {
        if selections.contains(value) {
            if !allowsMultipleSelection {
                selections.removeAll()
            } else {
                selections.remove(value)
            }
            
        } else {
            if !allowsMultipleSelection {
                selections.removeAll()
            }
            selections.insert(value)
        }
    }
    
    mutating func reset() {
        selections.removeAll()
    }
    
    func isSelected(_ value: String) -> Bool {
        return selections.contains(value)
    }
    
    var allowsMultipleSelection: Bool {
        didSet {
            selections.removeAll()
        }
    }
    
    init(allowsMultipleSelection: Bool = true) {
        self.allowsMultipleSelection = allowsMultipleSelection
    }
    
    typealias SelectionValue = String
    
}
