//
//  MultiSelectionWithEditButton.swift
//  MultiSelection
//
//  Created by Tien Le P. on 8/8/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct MultiSelectionWithEditButton : View {
    var items = ["Alpaca","Ant", "Bird","Cat", "Dog","Ferret","Fish","Frog", "Gecko", "Gerbil", "Goat", "Guinea Pig", "Hamster", "Hedgehog", "Crab", "Horse", "Iguana", "Mantis", "Mouse",  "Newt", "Pig", "Rabbit", "Rat", "Salamander", "Sheep", "Snake", "Spider", "Stick-Bugs", "Turtle"]
    
    @State var selectedRows = Set<String>()
    
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
struct MultiSelectionWithEditButton_Previews : PreviewProvider {
    static var previews: some View {
        MultiSelectionWithEditButton()
    }
}
#endif
