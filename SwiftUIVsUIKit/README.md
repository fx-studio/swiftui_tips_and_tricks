# SwiftUI vs UIKit

​		Chào bạn tới với bài viết này của mình. Khi chúng ta học một thứ gì đó mới thì thường sẽ liên tưởng tới các những thứ đã có trước đây. Cụ thể ở đây là `UIKit` thần thánh của anh em làm iOS. Bài viết này chỉ mang tính chất liệt kê cho bạn có 1 cái hình dung và có cái nhìn quen thuộc nhiều hơn.

> Bắt đầu thôi, ahihi

### Controllers

| UIKit                      | SwiftUI        | Note                                  |
| -------------------------- | -------------- | ------------------------------------- |
| UIViewController           | View           |                                       |
| UITableViewController      | List           |                                       |
| UICollectionViewController | -              | Hiện tại chưa có, có thể chế với list |
| UISplitViewController      | NavigationView | Hiện tại đang bị crash                |
| UINavigationController     | NavigationView |                                       |
| UIPageViewController       | -              |                                       |
| UITabBarController         | TabbedView     |                                       |
| UISearchController         | -              |                                       |
| UIImagePickerController    | -              |                                       |
| UIVideoEditorController    | -              |                                       |
| UIActivityViewController   | -              |                                       |
| UIAlertController          | Alert          |                                       |



### Views and Controlls

| UIKit                   | SwiftUI          | Note                              |
| ----------------------- | ---------------- | --------------------------------- |
| UILabel                 | Text             |                                   |
| UITabBar                | TabbedView       |                                   |
| UITabBarItem            | TabbedView       | `.tapItem` ở trong **TabbedView** |
| UITextField             | TextField        | password thì `SecureField`        |
| UITableView             | List             |                                   |
| UINavigationBar         | NavigationView   | `.navigationBarItems`             |
| UIBarButtonItem         | NavigationView   | `.navigationBarItems`             |
| UICollectionView        | -                |                                   |
| UIStackView             | HStack           | `.axis` == `.Horizontal`          |
| UIStackView             | VStack           | `.axis` == `.Vertical`            |
| UIScrollView            | ScrollView       |                                   |
| UIActivityIndicatorView | -                |                                   |
| UIImageView             | Image            |                                   |
| UIPickerView            | Picker           |                                   |
| UIButton                | Button           |                                   |
| UIDatePicker            | DatePicker       |                                   |
| UIPageControl           | -                |                                   |
| UISegmentedControl      | SegmentedControl |                                   |
| UISlider                | Slider           |                                   |
| UIStepper               | Stepper          |                                   |
| UISwitch                | Toggle           |                                   |
| UIToolBar               | -                |                                   |



### Framework Integration - UIKit in SwiftUI

| UIKit            | SwiftUI                       | Note |
| ---------------- | ----------------------------- | ---- |
| UIView           | UIViewRepresentable           |      |
| UIViewController | UIViewControllerRepresentable |      |



### Framework Integration - SwiftUI in UIKit

| UIKit                                  | SwiftUI | Note                                                         |
| -------------------------------------- | ------- | ------------------------------------------------------------ |
| UIView (UIHostingController)           | View    | There is no direct convert to `UIView`, but you can use container view to add view from `UIViewController` into view hierarchy |
| UIViewController (UIHostingController) | View    |                                                              |



​		*Cảm ơn bạn đã đọc và theo dõi bài viết này!*

---

