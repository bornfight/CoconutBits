//
//  NibInstantiable.swift
//  CoconutBits
//
//  Created by Dino on 20/11/2019.
//

import Foundation

public protocol NibInstantiable { }

public extension NibInstantiable where Self: UIViewController {
    static func instantied() -> Self {
        .init(nibName: String(describing: self), bundle: nil)
    }
}
