//
//  SelectKeeper.swift
//  MultiSelection
//
//  Created by Tien Le P. on 8/9/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import Foundation
import SwiftUI

//Thanks for https://stackoverflow.com/questions/56706188/how-does-one-enable-selections-in-swiftuis-list
struct SelectKeeper: SelectionManager {
    typealias SelectionValue = UUID
    
    // property
    var allowsMultipleSelection: Bool {
        didSet {
            // remove all item when changed mode
            selections.removeAll()
        }
    }
    var selections = Set<UUID>()
    
    // function
    init(allowsMultipleSelection: Bool = true) {
        self.allowsMultipleSelection = true
    }
    
    // select
    mutating func select(_ value: UUID) {
        if !allowsMultipleSelection {
            selections.removeAll()
        }
        selections.insert(value)
        print("selected: \(value)")
    }
    
    // deselected
    mutating func deselect(_ value: UUID) {
        selections.remove(value)
        print("deselected: \(value)")
    }
    
    func isSelected(_ value: UUID) -> Bool {
        return selections.contains(value)
    }
    
    // reset
    mutating func reset() {
        selections.removeAll()
    }
    
    // toggle of item
    mutating func toggle(_ value: UUID) {
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
    
    
    
    
}

