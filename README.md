# String-Extensions
[![License](https://img.shields.io/cocoapods/l/SwiftString.svg?style=flat)](http://cocoapods.org/pods/SwiftString)
[![Platform](https://img.shields.io/cocoapods/p/SwiftString.svg?style=flat)](http://cocoapods.org/pods/SwiftString)
[![Swift-5.0](http://img.shields.io/badge/Swift-5.0-blue.svg)]()

Swift Extenstion Collection for String Class in UKKit, which is I made it and used it.

## Methods

**getRangeParsed **

```swift
let sampleText = "'abcd'efg'hijkl'mnopqrst'uvwx'yz"
let ranges = sampleText.getRangeParsed(with: "'")
let attributedText = NSMutableAttributedString(string: sampleText)
        
ranges.forEach { (range) in
     attributedText.addAttribute(.foregroundColor, value: UIColor.red, range: range)
}
        
label.attributedText = attributedText
```



## Author

Han Sangmin, hahn.sangmin@gmail.com



## License

String+Extensions is available under the MIT license. See the LICENSE file for more info.