//
//  MultiSelectionWithObjects.swift
//  MultiSelection
//
//  Created by Tien Le P. on 8/8/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct MultiSelectionWithObjects : View {
    var pets = Pet.dummyData()
    
    @State var selectedRows = Set<UUID>()
    
    var body: some View {
        NavigationView {
            List(pets, selection: $selectedRows) { pet in
                Text(pet.name)
                    .font(.title)
                    .fontWeight(.bold)
                }
                .navigationBarItems(trailing: EditButton())
                .navigationBarTitle(Text("Selected \(selectedRows.count) rows"))
        }
    }
}

#if DEBUG
struct MultiSelectionWithObjects_Previews : PreviewProvider {
    static var previews: some View {
        MultiSelectionWithObjects()
    }
}
#endif
