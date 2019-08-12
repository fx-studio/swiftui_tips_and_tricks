//
//  MultiSelectionWithSelectionManager.swift
//  MultiSelection
//
//  Created by Tien Le P. on 8/9/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct MultiSelectionWithSelectionManager : View {
    var pets = Pet.dummyData()
    
    @State var selectKeeper = SelectKeeper()
    
    var body: some View {
        NavigationView {
            List(pets, selection: $selectKeeper) { pet in
                Text(pet.name)
                    .font(.title)
                    .fontWeight(.bold)
                }
                .navigationBarItems(trailing: EditButton())
                .navigationBarTitle(Text("Selected \(selectKeeper.selections.count) rows"))
        }
    }
}

#if DEBUG
struct MultiSelectionWithSelectionManager_Previews : PreviewProvider {
    static var previews: some View {
        MultiSelectionWithSelectionManager()
    }
}
#endif
