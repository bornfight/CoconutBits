//
//  IfSome.swift
//  Pods
//
//  Created by Filip Fajdetic on 14/02/2017.
//
//

import Foundation


public extension Optional {
    // `ifSome` function executes the closure if there is some value
    func ifSome(_ handler: (Wrapped) -> Void) {
        switch self {
        case .some(let wrapped): return handler(wrapped)
        case .none: break
        }
    }
    
    func ifNil(_ handler: () -> Void) {
        switch self {
        case .none: return handler()
        case .some: break
        }
    }
}
