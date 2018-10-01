//
//  ReusingAndDequeueing.swift
//  Pods
//
//  Created by Filip Fajdetic on 19/07/16.
//
//

import Foundation
import UIKit


public extension UITableViewCell {
    static var defaultReuseIdentifier: String {
        return String(describing: self)
    }
    static var nibName: String {
        return String(describing: self)
    }
}


public extension UICollectionViewCell {
    static var defaultReuseIdentifier: String {
        return String(describing: self)
    }
    static var nibName: String {
        return String(describing: self)
    }
}


public extension UITableView {
    func registerForReuse<T: UITableViewCell>(_ cellClassType: T.Type) {
        self.register(cellClassType, forCellReuseIdentifier: cellClassType.defaultReuseIdentifier)
    }
    
    func registerWithNib<T: UITableViewCell>(_ cellClassType: T.Type) {
        let bundle = Bundle(for: T.self)
        let nib = UINib(nibName: T.nibName, bundle: bundle)
        
        register(nib, forCellReuseIdentifier: T.defaultReuseIdentifier)
    }
    
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        guard let cell = self.dequeueReusableCell(withIdentifier: T.defaultReuseIdentifier) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.defaultReuseIdentifier)")
        }
        
        return cell
    }
}


public extension UICollectionView {
    func registerForReuse<T: UICollectionViewCell>(_ cellClassType: T.Type) {
        self.register(cellClassType, forCellWithReuseIdentifier: cellClassType.defaultReuseIdentifier)
    }
    
    func registerWithNib<T: UICollectionViewCell>(_ cellClassType: T.Type) {
        let bundle = Bundle(for: T.self)
        let nib = UINib(nibName: T.nibName, bundle: bundle)
        
        register(nib, forCellWithReuseIdentifier: T.defaultReuseIdentifier)
    }
    
    func dequeueReusableCell<T: UICollectionViewCell>(forIndexPath indexPath: IndexPath) -> T {
        guard let cell = self.dequeueReusableCell(withReuseIdentifier: T.defaultReuseIdentifier, for: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.defaultReuseIdentifier)")
        }
        
        return cell
    }
}
