//
//  MultiSelectRow.swift
//  MultiSelection
//
//  Created by Tien Le P. on 8/7/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct MultiSelectionRow : View {
    var name: String
    @Binding var selectedItems: Set<String>
    var isSelected: Bool {
        selectedItems.contains(name)
    }
    
    var body: some View {
        HStack {
            Text(self.name)
                .font(.title)
                .fontWeight(.bold) 
            Spacer()
            if self.isSelected {
                Image(systemName: "checkmark").foregroundColor(Color.blue)
                }
            }
            .tapAction {
                if self.isSelected {
                    self.selectedItems.remove(self.name)
                } else {
                    self.selectedItems.insert(self.name)
                }
        }
    }
}

