//
//  UIViewController+ShortTransitions.swift
//  CoconutBits
//
//  Created by Filip Fajdetic on 22/11/2018.
//

import Foundation
import UIKit

public extension UIViewController {
    
    func push(controller: UIViewController) {
        navigationController?.pushViewController(controller, animated: true)
    }
    
    func pushNonAnimated(controller: UIViewController) {
        navigationController?.pushViewController(controller, animated: false)
    }
    
    func presentAnimated(controller: UIViewController) {
        present(controller, animated: true, completion: nil)
    }
    
    func presentNonAnimated(controller: UIViewController) {
        present(controller, animated: false, completion: nil)
    }
    
}
