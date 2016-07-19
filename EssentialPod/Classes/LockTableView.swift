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
        let cellRect = self.rectForRowAtIndexPath(self.lastIndexPath())
        if self.bounds.contains(cellRect) {
            self.scrollEnabled = false
        } else {
            self.scrollEnabled = true
        }
    }
    
    private func lastIndexPath() -> NSIndexPath {
        let section = self.numberOfSections > 0 ? self.numberOfSections - 1 : 0
        let row = self.numberOfRowsInSection(section) > 0 ? self.numberOfRowsInSection(section) - 1 : 0
        
        return NSIndexPath(forRow: row, inSection: section)
    }
    
}