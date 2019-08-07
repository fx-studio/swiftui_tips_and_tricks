//
//  ListWithSelectionManager.swift
//  MultiSelection
//
//  Created by Tien Le P. on 8/7/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct ListWithSelectionManager : View {
    @State var selectKeeper = SelectKeeper()
    var items = ["iOS", "Android", "Apple", "Google", "Swift", "Objective-C", "Java"]
    
    var body: some View {
        NavigationView {
            List(items.identified(by: \.self), selection: $selectKeeper) { name in
                Text(name)
                    .font(.title)
                    .fontWeight(.bold)
            }
            .navigationBarItems(trailing: EditButton())
            .navigationBarTitle(Text("Selected \(selectKeeper.selections.count) rows"))
        }
    }
}

#if DEBUG
struct ListWithSelectionManager_Previews : PreviewProvider {
    static var previews: some View {
        ListWithSelectionManager()
    }
}
#endif
