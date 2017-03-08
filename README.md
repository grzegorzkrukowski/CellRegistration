# CellRegistration

[![Version](https://img.shields.io/cocoapods/v/CellRegistration.svg?style=flat)](http://cocoapods.org/pods/CellRegistration)
[![License](https://img.shields.io/cocoapods/l/CellRegistration.svg?style=flat)](http://cocoapods.org/pods/CellRegistration)
[![Platform](https://img.shields.io/cocoapods/p/CellRegistration.svg?style=flat)](http://cocoapods.org/pods/CellRegistration)

## General

UITableView and UICollectionView extensions that allows to auto-register cells and extends both with simplified interfaces for dequeuing.
It supports cells created via code and also ones created from Xib files.

## Example

```Swift
tableView.dequeueReusableCell(forIndexPath: indexPath) as StandardCell
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
