<p align="center">
<img src="cyextensions.png">
</p>

# CYExtensions
![Platform](http://img.shields.io/badge/platform-ios-blue.svg?style=flat)
![Cocoapods](https://img.shields.io/badge/Cocoapods-compatible-brightgreen.svg)
![Swift Version](https://img.shields.io/badge/Swift-4.1-brightgreen.svg)
![License](http://img.shields.io/badge/license-MIT-lightgrey.svg?style=flat
)
![pod](https://img.shields.io/badge/pod-v1.4.0-red.svg)

Extensions for better development. Use components better, faster coding in Swift. 

## Components
1. Array
2. Bundle
3. CALayer
4. Date
5. String
6. UIColor
7. UIImage
8. UISearchBar
9. UITextField
10. UIView
11. UIViewController

## _1. Array:_
```
["Foo", "Bar", "Junkie", "Let"].sample()
```
Results is `Foo`

## _2. Bundle:_
```
Bundle.main.releaseVersionNumber
```
Show the app release version.
```
Bundle.main.buildVersionNumber
```
Show the app build version.

## _10. UIView:_
```
let screenshot = self.view.takeScreenshot()
self.imageView.image = screenshot
```
Result: In this image view contain an image of this view.

## _11. UIViewController:_
```
class ViewController {
  
  override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }
}
```
Result:  When the keyboard is up and tap above it, the keyboard will be  dismissed.