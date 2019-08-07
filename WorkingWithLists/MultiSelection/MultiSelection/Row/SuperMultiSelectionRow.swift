//
//  SuperMultiSelectionRow.swift
//  MultiSelection
//
//  Created by Tien Le P. on 8/7/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct SuperMultiSelectionRow : View {
    
    var name: String
    @Binding var kepper: SelectKeeper
    var isSelected: Bool {
        kepper.selections.contains(name)
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
            self.kepper.toggle(self.name)
        }
    }
}
