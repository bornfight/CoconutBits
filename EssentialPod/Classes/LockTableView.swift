//
//  LockTableView.swift
//  Pods
//
//  Created by Filip Fajdetic on 19/07/16.
//
//

import Foundation
import UIKit


public extension UITableView {
    
    func lockTableIfNecessary() {
        let cellRect = self.rectForRow(at: self.lastIndexPath())
        if self.bounds.contains(cellRect) {
            self.isScrollEnabled = false
        } else {
            self.isScrollEnabled = true
        }
    }
    
    fileprivate func lastIndexPath() -> IndexPath {
        let section = self.numberOfSections > 0 ? self.numberOfSections - 1 : 0
        let row = self.numberOfRows(inSection: section) > 0 ? self.numberOfRows(inSection: section) - 1 : 0
        
        return IndexPath(row: row, section: section)
    }
    
}
