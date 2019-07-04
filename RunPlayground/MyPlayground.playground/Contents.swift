import SwiftUI
import PlaygroundSupport

struct MyView : View {
    var body: some View {
        Text("Hello Playground!")
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: MyView())
