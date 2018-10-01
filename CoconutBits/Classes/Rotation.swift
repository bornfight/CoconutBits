//
//  Rotation.swift
//  Pods
//
//  Created by Filip Fajdetic on 19/07/16.
//
//

import Foundation
import UIKit


public extension UITableView {
    func rotateMyselfBy180() {
        CATransaction.begin()
        CATransaction.setDisableActions(true)
        let radians = atan2f(Float(transform.b), Float(transform.a))
        let degrees = Double(radians) * (180 / M_PI)
        let cellTransform = CGAffineTransform(rotationAngle: (180 + CGFloat(degrees)) * CGFloat(M_PI)/180)
        transform = cellTransform
        CATransaction.commit()
    }
}


public extension UITableViewCell {
    func rotateMyselfBy180() {
        CATransaction.begin()
        CATransaction.setDisableActions(true)
        let radians = atan2f(Float(transform.b), Float(transform.a))
        let degrees = Double(radians) * (180 / M_PI)
        let cellTransform = CGAffineTransform(rotationAngle: (180 + CGFloat(degrees)) * CGFloat(M_PI)/180)
        transform = cellTransform
        CATransaction.commit()
    }
}
