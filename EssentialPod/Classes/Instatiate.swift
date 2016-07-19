//
//  Instatiate.swift
//  Pods
//
//  Created by Filip Fajdetic on 19/07/16.
//
//

import Foundation
import UIKit


public extension UIViewController {
    static var storyboardIdentifier: String {
        return String(self)
    }
}


public extension UIStoryboard {
    func instantiateViewController<T: UIViewController>() -> T {
        let optViewController = self.instantiateViewControllerWithIdentifier(T.storyboardIdentifier)
        
        guard let viewController = optViewController as? T else {
            fatalError("Couldn’t instantiate view controller with identifier \(T.storyboardIdentifier)")
        }
        
        return viewController
    }
}