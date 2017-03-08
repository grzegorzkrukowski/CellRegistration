# CellRegistration

[![Version](https://img.shields.io/cocoapods/v/CellRegistration.svg?style=flat)](http://cocoapods.org/pods/CellRegistration)
[![License](https://img.shields.io/cocoapods/l/CellRegistration.svg?style=flat)](http://cocoapods.org/pods/CellRegistration)
[![Platform](https://img.shields.io/cocoapods/p/CellRegistration.svg?style=flat)](http://cocoapods.org/pods/CellRegistration)

## General

UITableView and UICollectionView extensions that allows to auto-register cells and extends both with simplified interfaces for dequeuing. It uses swift generics to detect the desired type of cell. It supports cells created via code and also ones created from Xib files.

## Example

For standard cells that inherits from UITableViewCell:

```Swift
tableView.dequeueReusableCell(forIndexPath: indexPath) as StandardCell
```

or

```Swift
let : StandardCell = tableView.dequeueReusableCell(forIndexPath: indexPath)
```

For cells that are loaded from xib files:

```Swift
class XibTableViewCell : UITableViewCell {
    
}

//custom cells loaded from xibs have to extend ViewFromXib, to allow automatic xib registration
extension XibTableViewCell: ViewFromXib { }

tableView.dequeueReusableCell(forIndexPath: indexPath) as XibTableViewCell
```

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

CellRegistration is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "CellRegistration"
```

## Author

Grzegorz Krukowski, grkrukowski@gmail.com

## License

CellRegistration is available under the MIT license. See the LICENSE file for more info.
