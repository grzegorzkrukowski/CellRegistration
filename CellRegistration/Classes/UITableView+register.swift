//
//  UITableView+register.swift
//  Pods
//
//  Created by Grzegorz Krukowski on 08/03/2017.
//
//

import Foundation

private struct AssociatedObjectKey {
    static var registeredCells = "registeredCells"
}

extension UITableView {
    private var registeredCells: Set<String> {
        get {
            if objc_getAssociatedObject(self, &AssociatedObjectKey.registeredCells) as? Set<String> == nil {
                self.registeredCells = Set<String>()
            }
            return objc_getAssociatedObject(self, &AssociatedObjectKey.registeredCells) as! Set<String>
        }

        set(newValue) {
            objc_setAssociatedObject(self, &AssociatedObjectKey.registeredCells, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }

    private func register<T: ReusableView>(_: T.Type) {
        let bundle = Bundle(for: T.self)

        if bundle.path(forResource: T.reuseIdentifier, ofType: "nib") != nil {
            let nib = UINib(nibName: T.reuseIdentifier, bundle: bundle)
            register(nib, forCellReuseIdentifier: T.reuseIdentifier)
        } else {
            register(T.self, forCellReuseIdentifier: T.reuseIdentifier)
        }
    }

    public func dequeueReusableCell<T: ReusableView>(forIndexPath indexPath: IndexPath) -> T {
        if self.registeredCells.contains(T.reuseIdentifier) == false {
            self.registeredCells.insert(T.reuseIdentifier)
            self.register(T.self)
        }

        guard let cell = dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Error dequeuing cell with reuse identifier: \(T.reuseIdentifier)")
        }

        return cell
    }
}
