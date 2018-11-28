//
//  File.swift
//  CoconutBits
//
//  Created by Dino on 28/11/2018.
//

import Foundation

protocol Identifiable {
    static var identifier: String { get }
}

extension Identifiable {
    static var identifier: String {
        return String(describing: Self.self)
    }
}
