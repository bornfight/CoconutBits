//
//  File.swift
//  CoconutBits
//
//  Created by Dino on 28/11/2018.
//

import Foundation

public protocol Identifiable {
    static var identifier: String { get }
}

public extension Identifiable {
    static var identifier: String {
        return String(describing: Self.self)
    }
}

extension UIView: Identifiable { }
