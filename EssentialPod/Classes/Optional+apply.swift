//
//  Optional+apply.swift
//  EssentialPod
//
//  Created by Dino on 27/09/2018.
//

import Foundation

extension Optional {
    /// Applies the supplied transform to the function only if both the
    /// transform and the value are non-nil
    func apply<U>(_ transform: ((Wrapped) -> U)?) -> U? {
        if let transform = transform, let value = self { return transform(value) }
        
        return nil
    }
}
