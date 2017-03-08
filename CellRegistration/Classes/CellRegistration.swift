//
//  ReusableView.swift
//  Pods
//
//  Created by Grzegorz Krukowski on 08/03/2017.
//
//

import Foundation

public protocol CellRegistration: class {
    static var reuseIdentifier: String { get }
}

extension CellRegistration where Self: UIView {
    public static var reuseIdentifier: String {
        return String(describing: self)
    }
}

extension UICollectionViewCell: CellRegistration { }

extension UITableViewCell: CellRegistration { }
