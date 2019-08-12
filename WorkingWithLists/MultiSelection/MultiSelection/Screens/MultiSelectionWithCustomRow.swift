//
//  MultiSelectionWithCustomRow.swift
//  MultiSelection
//
//  Created by Tien Le P. on 8/12/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct MultiSelectionWithCustomRow : View {
    var pets = Pet.dummyData()
    
    @State var selectedRows = Set<UUID>()
    
    var body: some View {
        NavigationView {
            List(pets, selection: $selectedRows) { pet in
                MultiSelectRow(pet: pet, selectedItems: self.$selectedRows)
            }
            .navigationBarTitle(Text("Selected \(selectedRows.count) rows"))
        }
    }
}

#if DEBUG
struct MultiSelectionWithCustomRow_Previews : PreviewProvider {
    static var previews: some View {
        MultiSelectionWithCustomRow()
    }
}
#endif
