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
        let degrees = Double(radians) * (180 / Double.pi)
        let cellTransform = CGAffineTransform(rotationAngle: (180 + CGFloat(degrees)) * CGFloat(Double.pi)/180)
        transform = cellTransform
        CATransaction.commit()
    }
}


public extension UITableViewCell {
    func rotateMyselfBy180() {
        CATransaction.begin()
        CATransaction.setDisableActions(true)
        let radians = atan2f(Float(transform.b), Float(transform.a))
        let degrees = Double(radians) * (180 / Double.pi)
        let cellTransform = CGAffineTransform(rotationAngle: (180 + CGFloat(degrees)) * CGFloat(Double.pi)/180)
        transform = cellTransform
        CATransaction.commit()
    }
}
