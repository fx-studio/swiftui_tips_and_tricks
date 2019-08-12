//
//  MultiSelectionWithCustomEditButton.swift
//  MultiSelection
//
//  Created by Tien Le P. on 8/12/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct MultiSelectionWithCustomEditButton : View {
    var pets = Pet.dummyData()
    
    @State var selectedRows = Set<UUID>()
    @State var isEditing = false
    
    var body: some View {
        NavigationView {
            List(pets, selection: $selectedRows) { pet in
                MultiSelectRow(pet: pet, selectedItems: self.$selectedRows)
                }
                .navigationBarItems(trailing: Button(action: {
                    // code for action
                    self.$isEditing.value.toggle()
                    if !self.isEditing {
                        // when user tap "DONE"
                        print("Items selected: \(self.selectedRows)")
                    }
                }, label: {
                    if self.isEditing {
                        Text("Done").foregroundColor(Color.red)
                    } else {
                        Text("Edit").foregroundColor(Color.blue)
                    }
                }))
                .environment(\.editMode, .constant(self.isEditing ? EditMode.active : EditMode.inactive))
                .animation(Animation.spring())
                .navigationBarTitle(Text("Selected \(selectedRows.count) rows"))
        }
    }
}

#if DEBUG
struct MultiSelectionWithCustomEditButton_Previews : PreviewProvider {
    static var previews: some View {
        MultiSelectionWithCustomEditButton()
    }
}
#endif
