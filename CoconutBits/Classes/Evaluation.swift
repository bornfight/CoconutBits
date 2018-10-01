//
//  Evaluation.swift
//  Pods
//
//  Created by Filip Fajdetic on 19/07/16.
//
//

import Foundation


public extension String {
    func isValidEmailFormat() -> Bool {
        let regexString = "^[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regexString)
        return predicate.evaluate(with: self)
    }
    func isValidPhoneNumber() -> Bool {
        let regexString = "^((\\+)|(00)|(0))[0-9]{6,14}$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regexString)
        return predicate.evaluate(with: self)
    }
}
