[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![SwiftLint Sindre](https://img.shields.io/badge/SwiftLint-Sindre-hotpink.svg)](https://github.com/sindresorhus/swiftlint-sindre)

# ReusableCell
- Makes dequeuing cells simpler
- Works for TableView and CollectionView

### Example 1:

```swift
tableView.register(CustomCell.self) // Register Cells with ease
extension CustomCell: ReusableCell {} // Make your custom cells
let cell = tableView.dequeueReusableCell(for: indexPath) // Instantiate your cells
```

### Example 2:
```swift
import CommonCell
import With
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
  return with(tableView.dequeueReusableCell(indexPath: indexPath) as TextCell) {
     $0.backgroundColor = .clear
     $0.data = rowData[indexPath.row] // populate cell with data
  }
}
```

### Install:
- Carthage: `github "eonist/ReusableCell" "master"`
- Manual: Open `ReusableCellExample.xcodeproj`
- CocoaPod (Coming soon)  
