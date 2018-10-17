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
    func showAlertMessage(_ message: String, title: String, actionTitle: String, style: UIAlertController.Style = UIAlertController.Style.alert) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let defaultAction = UIAlertAction(title: actionTitle, style: UIAlertAction.Style.default, handler: nil)
        alertController.addAction(defaultAction)
        self.present(alertController, animated: true, completion: nil)
    }
}
