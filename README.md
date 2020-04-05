[![SPM compatible](https://img.shields.io/badge/SPM-compatible-4BC51D.svg?style=flat)](https://github.com/apple/swift)
[![SwiftLint Sindre](https://img.shields.io/badge/SwiftLint-Sindre-hotpink.svg)](https://github.com/sindresorhus/swiftlint-sindre)

# Features
- Makes dequeuing cells simpler
- Supports UITableView and UICollectionView
- Supports UITableViewCell and UICollectionViewCell

### Installation
- SPM: `.package(url: "https://github.com/eonist/ReusableCell", .branch("master"))`

### Example 1:

```swift
import ReusableCell_iOS
tableView.register(CustomCell.self) // Register Cells with ease
extension CustomCell: ReusableCell {} // Make your custom cells
let cell: CustomCell = tableView.dequeueReusableCell(for: indexPath) // Instantiate your cells
// In the cell:
extension CustomCell: ReusableCellKind { // make your subclass conform to the protocol
  open class var defaultReuseIdentifier: String { return "\(TextCell.self)" }
}
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

