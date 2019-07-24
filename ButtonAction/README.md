# Button Action

​		Chào các bạn đã quay lại với bài tutorial này của mình. Hôm nay, chúng ta sẽ tiếp tục với thao tác nhỏ là lấy sự kiện của người dùng. Đây chính là `IBAction` của UIKit. 

### Bắt đầu

​		Chúng ta hãy tạo 1 `Button` đơn giản nhất cả thể với cú pháp mới của `SwiftUI`

```swift
Button(action: {
    // your action here
}) {
    Text("This is button")
}
```

​		Giải thích chút trong đoạn code trên nha:

* Tạp 1 button thì chúng ta có 2 phần, 1 cho phần cho xử lý thao tác của người dùng và 1 phần cho định nghĩa button

* Ta có thể thay Text bằng nhiều loại Text, Image … hoặc view nào đó

  Ví dụ:

  ```swift
  Button(action: {
      // your action here
  }) {
      Image("example-image")
  }
  ```

Rất đơn giản đúng không nào, tiếp tục vào phần sau:

### Xử lý

Ta xem 1 đoạn code sau

```swift
struct ContentView : View {
    
    @State var count: Int = 0
    
    var body: some View {
        VStack {
            Text("Count: \(self.count)")
                .font(.title)
            Button(action: {
                //did tap
                self.count = self.count + 1
            }) {
                Text("Tap me")
            }
            .padding(.all)
            .background(Color.green)
        }
    }
}
```

​		Biến `@State` sẽ giải thích ở 1 phần khác, còn hiển nôm na ở đây thì nó sẽ theo dõi trạng thái và tự động cập nhật cho `Text`

		> Theo tư tưởng của `SwiftUI` thì:

* Bạn chỉ cần khai báo 1 lần và nó sẽ chạy mãi mãi.
* Khi người dùng nhấn vào button thì sẽ bắt sự kiện người dùng là tăng biến `count` lên 1 đơn vị.
* Phần hiển thị Text sẽ auto cập nhật giá trị của biến `count` mà mình không cần quan tâm tới việc update dữ liệu mới lên Text như UIKit và cách lập trình trước đây.

​		Vô cùng đơn giản phải không, chúc bạn thành công với `Button` và `Action`.

### Tham khảo các cách sử dụng khác của Button

* Cách kute dễ thương

```swift
Button(
    action: {
        // did tap
    },
    label: { Text("Click Me") }
)
```

* Cách siêu cấp kute dễ thương

```swift
Button("Click Me") {
    // did tap
}
```

* Cách đẹp trai, thanh lịch, vô địch khắp vũ trụ này

```swift
Button(action: {
                
}, label: {
    Image(systemName: "clock")
    Text("Click Me")
    Text("Subtitle")
})
.foregroundColor(Color.white)
.padding()
.background(Color.blue)
.cornerRadius(5)
```

​		*Cảm ơn bạn đã đọc và theo dõi bài viết này. Ngoài ra, bạn muốn xem trực quan sinh động hơn thì có thể xem ở link video sau.*

> [https://youtu.be/jFhjXKQjD-o](https://youtu.be/jFhjXKQjD-o)

---

