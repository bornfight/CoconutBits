//
//  CollectionOrStringish.swift
//  Pods
//
//  Created by Filip on 24/01/2017.
//
//

import Foundation

public extension Optional where Wrapped: Set {
    var isNilOrEmpty: Bool {
        switch self {
        case let .some(value): return value.isEmpty
        default: return true
        }
    }
}

public extension Optional where Wrapped: Dictionary {
    var isNilOrEmpty: Bool {
        switch self {
        case let .some(value): return value.isEmpty
        default: return true
        }
    }
}

public extension Optional where Wrapped: Array {
    var isNilOrEmpty: Bool {
        switch self {
        case let .some(value): return value.isEmpty
        default: return true
        }
    }
}

public extension Optional where Wrapped: String {
    var isNilOrEmpty: Bool {
        switch self {
        case let .some(value): return value.isEmpty
        default: return true
        }
    }
}
