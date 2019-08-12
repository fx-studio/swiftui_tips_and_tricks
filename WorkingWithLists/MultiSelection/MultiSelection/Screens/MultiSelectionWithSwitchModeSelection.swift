//
//  MultiSelectionWithSwitchModeSelection.swift
//  MultiSelection
//
//  Created by Tien Le P. on 8/12/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct MultiSelectionWithSwitchModeSelection : View {
    var pets = Pet.dummyData()
    
    @State var selectKeeper = SelectKeeper()
    @State var isEditing = false
    @State var isMultiSelection = true
    
    var body: some View {
        NavigationView {
            List(pets, selection: $selectKeeper) { pet in
                SuperMultiSelectRow(pet: pet, keeper: self.$selectKeeper)
                }
                .navigationBarItems(leading: Button(action: {
                    // code for change select mode
                    self.$isMultiSelection.value.toggle()
                    self.selectKeeper.allowsMultipleSelection = self.isMultiSelection
                }, label: {
                    if self.isMultiSelection {
                        Text("Multi-Select").foregroundColor(Color.blue)
                    } else {
                        Text("One-Select").foregroundColor(Color.red)
                    }
                }) ,trailing: Button(action: {
                    // code for action
                    self.$isEditing.value.toggle()
                    if !self.isEditing {
                        // when user tap "DONE"
                        print("Items selected: \(self.selectKeeper.selections)")
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
                .navigationBarTitle(Text("Selected \(selectKeeper.selections.count) rows"))
        }
    }
}

#if DEBUG
struct MultiSelectionWithSwitchModeSelection_Previews : PreviewProvider {
    static var previews: some View {
        MultiSelectionWithSwitchModeSelection()
    }
}
#endif
