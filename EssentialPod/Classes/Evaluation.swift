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
        let regexString = "(?:[a-zA-Z0-9!#$%\\&‘*+/=?\\^_`{|}~-]+(?:\\.[a-zA-Z0-9!#$%\\&'*+/=?\\^_`{|}" + "~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\" + "x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-z0-9](?:[a-" + "z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\\[(?:(?:25[0-5" + "]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-" + "9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21" + "-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regexString)
        return predicate.evaluate(with: self)
    }
    func isValidPhoneNumber() -> Bool {
        let regexString = "^((\\+)|(00)|(0))[0-9]{3,14}$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regexString)
        return predicate.evaluate(with: self)
    }
}
