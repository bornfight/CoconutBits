//
//  Optional+isNilOrEmpty.swift
//  CoconutBits
//
//  Created by Dino on 01/10/2018.
//

import Foundation

public extension Optional where Wrapped: Collection {
    var isNilOrEmpty: Bool {
        return map { $0.isEmpty } ?? true
    }
}
