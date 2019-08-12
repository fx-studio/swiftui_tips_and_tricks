//
//  MultiSelectRow.swift
//  MultiSelection
//
//  Created by Tien Le P. on 8/12/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct MultiSelectRow : View {
    
    var pet: Pet
    @Binding var selectedItems: Set<UUID>
    var isSelected: Bool {
        selectedItems.contains(pet.id)
    }
    
    var body: some View {
        HStack {
            Text(self.pet.name)
                .font(.title)
                .fontWeight(.bold)
            Spacer()
            if self.isSelected {
                Image(systemName: "checkmark")
                    .foregroundColor(Color.blue)
            }
            }
            .tapAction {
                if self.isSelected {
                    self.selectedItems.remove(self.pet.id)
                } else {
                    self.selectedItems.insert(self.pet.id)
                }
        }
    }
}

