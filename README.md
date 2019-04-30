[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![SwiftLint Sindre](https://img.shields.io/badge/SwiftLint-Sindre-hotpink.svg)](https://github.com/sindresorhus/swiftlint-sindre)


# ReusableCell
Makes dequeuing cells simpler 

### Example:

```swift
extension CustomCell: ReusableView {} // Make your custom cells
let cell: CustomCell = collectionView.dequeueReusableCell(for: indexPath) // Instantiate your cells
```

### Install:
- Carthage: `github "eonist/ReusableCell" "master"`
- Manual: Open `ReusableCellExample.xcodeproj`
- CocoaPod (Coming soon)  
