//
//  ViewFromNib.swift
//  CellRegistration
//
//  Created by Grzegorz Krukowski on 08/03/2017.
//
//

import Foundation

public protocol ViewFromXib: class {
    static var xibFileName: String { get }
}

extension ViewFromXib where Self: UIView {
    public static var xibFileName: String {
        return String(describing: self)
    }
}
