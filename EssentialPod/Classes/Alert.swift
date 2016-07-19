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
    func showAlertMessage(message: String, title: String, actionTitle: String, style: UIAlertControllerStyle = UIAlertControllerStyle.Alert) {
        let nameEmptyAlertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let defaultAction = UIAlertAction(title: actionTitle, style: UIAlertActionStyle.Default, handler: nil)
        nameEmptyAlertController.addAction(defaultAction)
        self.presentViewController(nameEmptyAlertController, animated: true, completion: nil)
    }
}