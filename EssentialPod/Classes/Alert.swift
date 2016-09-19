//
//  Alert.swift
//  Pods
//
//  Created by Filip Fajdetic on 19/07/16.
//
//

import Foundation
import UIKit


public extension UIViewController {
    func showAlertMessage(_ message: String, title: String, actionTitle: String, style: UIAlertControllerStyle = UIAlertControllerStyle.alert) {
        let nameEmptyAlertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let defaultAction = UIAlertAction(title: actionTitle, style: UIAlertActionStyle.default, handler: nil)
        nameEmptyAlertController.addAction(defaultAction)
        self.present(nameEmptyAlertController, animated: true, completion: nil)
    }
}
