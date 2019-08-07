//
//  ListWithSwitchModeSelection.swift
//  MultiSelection
//
//  Created by Tien Le P. on 8/7/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct ListWithSwitchModeSelection : View {
    @State var selectKeeper = SelectKeeper()
    var items = ["iOS", "Android", "Apple", "Google", "Swift", "Objective-C", "Java"]
    
    // Thanks for: https://stackoverflow.com/questions/57344305/swiftui-button-as-editbutton
    @State var isEditing = false
    @State var isMuliSelection = true
    
    var body: some View {
        NavigationView {
            List(items.identified(by: \.self), selection: $selectKeeper, action: { value in
                self.selectKeeper.toggle(value)
            }) { name in
                SuperMultiSelectionRow(name: name, kepper: self.$selectKeeper)
            }
            .navigationBarItems(leading: Button(action: {
                self.$isMuliSelection.value.toggle()
                self.selectKeeper.allowsMultipleSelection = self.isMuliSelection
            }, label: {
                if self.isMuliSelection {
                    Text("Multi-Selection").foregroundColor(Color.blue)
                } else {
                    Text("One-Selection").foregroundColor(Color.red)
                }
            }) ,trailing: Button(action: {
                self.$isEditing.value.toggle()
                if !self.isEditing {
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
struct ListWithSwitchModeSelection_Previews : PreviewProvider {
    static var previews: some View {
        ListWithSwitchModeSelection()
    }
}
#endif
