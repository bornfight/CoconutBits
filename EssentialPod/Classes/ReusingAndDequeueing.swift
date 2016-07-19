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
        return String(self)
    }
    static var nibName: String {
        return String(self)
    }
}


public extension UICollectionViewCell {
    static var defaultReuseIdentifier: String {
        return String(self)
    }
    static var nibName: String {
        return String(self)
    }
}


public extension UITableView {
    func registerForReuse<T: UITableViewCell>(cellClassType: T.Type) {
        self.registerClass(cellClassType, forCellReuseIdentifier: cellClassType.defaultReuseIdentifier)
    }
    
    func registerWithNib<T: UITableViewCell>(cellClassType: T.Type) {
        let bundle = NSBundle(forClass: T.self)
        let nib = UINib(nibName: T.nibName, bundle: bundle)
        
        registerNib(nib, forCellReuseIdentifier: T.defaultReuseIdentifier)
    }
    
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        guard let cell = self.dequeueReusableCellWithIdentifier(T.defaultReuseIdentifier) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.defaultReuseIdentifier)")
        }
        
        return cell
    }
}


public extension UICollectionView {
    func registerForReuse<T: UICollectionViewCell>(cellClassType: T.Type) {
        self.registerClass(cellClassType, forCellWithReuseIdentifier: cellClassType.defaultReuseIdentifier)
    }
    
    func registerWithNib<T: UICollectionViewCell>(cellClassType: T.Type) {
        let bundle = NSBundle(forClass: T.self)
        let nib = UINib(nibName: T.nibName, bundle: bundle)
        
        registerNib(nib, forCellWithReuseIdentifier: T.defaultReuseIdentifier)
    }
    
    func dequeueReusableCell<T: UICollectionViewCell>(forIndexPath indexPath: NSIndexPath) -> T {
        guard let cell = self.dequeueReusableCellWithReuseIdentifier(T.defaultReuseIdentifier, forIndexPath: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.defaultReuseIdentifier)")
        }
        
        return cell
    }
}