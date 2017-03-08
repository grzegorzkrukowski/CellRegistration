# CellRegistration

[![Version](https://img.shields.io/cocoapods/v/CellRegistration.svg?style=flat)](http://cocoapods.org/pods/CellRegistration)
[![License](https://img.shields.io/cocoapods/l/CellRegistration.svg?style=flat)](http://cocoapods.org/pods/CellRegistration)
[![Platform](https://img.shields.io/cocoapods/p/CellRegistration.svg?style=flat)](http://cocoapods.org/pods/CellRegistration)

## One line to rule them all

One-liner replacement for registering, dequeuing, casting cells for UITableView and UICollectionView

Instead of:

```Swift
tableView.register(MyCustomCell.self, forCellReuseIdentifier: "MyCustomCell")
let cell : MyCustomCell = tableView.dequeueReusableCell(withIdentifier: "MyCustomCell", for: indexPath) as! MyCustomCell
```

you can now do only:

```Swift
let : MyCustomCell = tableView.dequeueReusableCell(forIndexPath: indexPath)
```

No code refacotring needed, you can use that with existing projects that uses old-way.
No need to worry about any registering, reuse identifiers, casting any more.

## Cells loaded from nib files

Regardless the type of cell (loaded from code, or loaded from nib file), code is always the same:

**Only requirement is to make a xib file with the same name as a class name.**

```Swift
let : MyCustomCell = tableView.dequeueReusableCell(forIndexPath: indexPath)
let : MyCustomCellLoadedFromXib = tableView.dequeueReusableCell(forIndexPath: indexPath)
```

or

```Swift
tableView.dequeueReusableCell(forIndexPath: indexPath) as MyCustomCell
tableView.dequeueReusableCell(forIndexPath: indexPath) as MyCustomCellLoadedFromXib
``` 
This pod will search for a xib file that matches class name and register this nib automatically, otherwise it registers cell by class name.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

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
