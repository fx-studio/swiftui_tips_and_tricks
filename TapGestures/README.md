# Tap Gestures

​		Chào các bạn đã quay lại với bài tutorial này của mình. Hôm nay, chúng ta sẽ tiếp tục với việc lấy sự kiện của người dùng lên giao diện ứng dụng của mình. Nhưng lần này thì với bất kì cái gì cũng được.

​		Bạn sẽ nghĩ tới `UITapGestureRecognizer` huyền thoại và họ hàng nhà `Gestures` bá đạo của UIKit. Bạn nào quên nó rồi thì có thể đọc lại tại [đây](https://developer.apple.com/documentation/uikit/touches_presses_and_gestures/handling_uikit_gestures/handling_tap_gestures).

​		Nhưng đây là `SwiftUI` và chúng ta bắt đầu khám phá thế giới mới!

### Bắt đầu

​		Vẫn là cách đơn giản để bắt 1 sự kiện cảm ứng trên 1 view bất kì

```swift
Text("Tap me!")
    .tapAction {
        print("Tapped!")
    }
```

​		Đối tượng khác vẫn được, không nhất thiết mỗi Text

```swift
Image("example-image")
    .tapAction(count: 2) {
        print("Double tapped!")
    }
```

* Với tham số `count` thì 2 là **double-tap**. Quá EZ :-)

### Phức tạp hơn xí

```swift
struct ContentView : View {
    
    @State var red: Double = 1.0
    @State var green: Double = 1.0
    @State var blue: Double = 1.0

    var body: some View {
        Text("Tap me!")
            .font(.title)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .background(Color(red: self.red, green: self.green, blue: self.blue))
            .tapAction {
                // did tap
                self.red = Double.random(in: 0...1)
                self.green = Double.random(in: 0...1)
                self.blue = Double.random(in: 0...1)
        }
    }
}
```

* Bạn chỉ cần xử lý trong phần `tapAction` cho dữ liệu

* Giao diện của bạn sẽ tự động update mà không cần việc gọi update giao diện trong phần xử lý action.

  **Well done :-)**

​		*Cảm ơn bạn đã đọc và theo dõi bài viết này. Ngoài ra, bạn muốn xem trực quan sinh động hơn thì có thể xem ở link video sau.*

> [https://youtu.be/uFZEyLUayzU](https://youtu.be/uFZEyLUayzU)

---

