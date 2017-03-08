//
//  UICollectionView+register.swift
//  Pods
//
//  Created by Grzegorz Krukowski on 08/03/2017.
//
//

import Foundation

private struct AssociatedObjectKey {
    static var registeredCells = "registeredCells"
}

extension UICollectionView {
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
    
    public func register<T: UITableViewCell>(_: T.Type) where T: ReusableView {
        register(T.self, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
    
    public func register<T: UITableViewCell>(_: T.Type) where T: ReusableView, T: ViewFromXib {
        let bundle = Bundle(for: T.self)
        let nib = UINib(nibName: T.xibFileName, bundle: bundle)
        register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
    
    public func dequeueReusableCell<T: UITableViewCell>(forIndexPath indexPath: IndexPath) -> T where T: ReusableView {
        if self.registeredCells.contains(T.reuseIdentifier) == false {
            self.registeredCells.insert(T.reuseIdentifier)
            self.register(T.self)
        }
        
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Error dequeuing cell with reuse identifier: \(T.reuseIdentifier)")
        }
        
        return cell
    }
    
    public func dequeueReusableCell<T: UITableViewCell>(forIndexPath indexPath: IndexPath) -> T where T: ReusableView, T: ViewFromXib {
        if self.registeredCells.contains(T.reuseIdentifier) == false {
            self.registeredCells.insert(T.reuseIdentifier)
            self.register(T.self)
        }
        
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Error dequeuing cell with reuse identifier: \(T.reuseIdentifier)")
        }
        
        return cell
    }
}
