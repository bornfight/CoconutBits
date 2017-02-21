//
//  CollectionOrStringish.swift
//  Pods
//
//  Created by Filip on 24/01/2017.
//
//

import Foundation

public protocol _CollectionOrStringish {
    var isEmpty: Bool { get }
}

extension String: _CollectionOrStringish { }
extension Array: _CollectionOrStringish { }
extension Dictionary: _CollectionOrStringish { }
extension Set: _CollectionOrStringish { }

public extension Optional where Wrapped: _CollectionOrStringish {
    var isNilOrEmpty: Bool {
        switch self {
        case let .some(value): return value.isEmpty
        default: return true
        }
    }
}
