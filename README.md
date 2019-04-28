[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Swift-lint Sindre](https://img.shields.io/badge/swift--lint-sindre-brightgreen.svg)](https://github.com/sindresorhus/swiftlint-sindre)


# ReusableCell
ReusableCell

### Example:

```swift
extension CustomCell: ReusableView {} // Make your custom cells
let cell: CustomCell = collectionView.dequeueReusableCell(for: indexPath) // Instantiate your custom cells
```

### Install:
- Carthage: `github "eonist/ReusableCell" "master"`
- Manual: Open `ReusableCellExample.xcodeproj`
- CocoaPod (Coming soon)  
