//
//  ListWithEditButton.swift
//  MultiSelection
//
//  Created by Tien Le P. on 8/7/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct ListWithEditButton : View {
    @State var selectedRows = Set<String>()
    var items = ["iOS", "Android", "Apple", "Google", "Swift", "Objective-C", "Java"]
    
    var body: some View {
        NavigationView {
            List(items.identified(by: \.self), selection: $selectedRows) { name in
                Text(name)
                    .font(.title)
                    .fontWeight(.bold)
            }
            .navigationBarItems(trailing: EditButton())
            .navigationBarTitle(Text("Selected \(selectedRows.count) rows"))
        }
    }
}

#if DEBUG
struct ListWithEditButton_Previews : PreviewProvider {
    static var previews: some View {
        ListWithEditButton()
    }
}
#endif
