//
//  ListWithSelectRow.swift
//  MultiSelection
//
//  Created by Tien Le P. on 8/7/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct ListWithSelectRow : View {
    var items = ["iOS", "Android", "Apple", "Google", "Swift", "Objective-C", "Java"]
   
    @State var selectKeeper = Set<String>()
    
    var body: some View {
        NavigationView {
            List() {
                ForEach(items.identified(by: \.self)) { name in
                    MultiSelectionRow(name: name, selectedItems: self.$selectKeeper)
                }
            }
            .navigationBarTitle(Text("Selected \(selectKeeper.count) rows"))
        }
    }
}

#if DEBUG
struct ListWithSelectRow_Previews : PreviewProvider {
    static var previews: some View {
        ListWithSelectRow()
    }
}
#endif
