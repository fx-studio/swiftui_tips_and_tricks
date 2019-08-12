//
//  SuperMultiSelectRow.swift
//  MultiSelection
//
//  Created by Tien Le P. on 8/12/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct SuperMultiSelectRow : View {
    var pet: Pet
    @Binding var keeper: SelectKeeper
    var isSelected: Bool {
        keeper.selections.contains(pet.id)
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
                self.keeper.toggle(self.pet.id)
        }
    }
}
