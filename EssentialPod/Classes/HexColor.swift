//
//  HexColor.swift
//  Pods
//
//  Created by Filip Fajdetic on 19/07/16.
//
//

import Foundation
import UIKit


public extension UIColor {
    convenience init?(r: String, g: String, b: String, a: CGFloat) {
        let colorsArray = [r, g, b]
        let hexArray = ["0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","A","B","C","D","E","F"]
        for color in colorsArray {
            if color.count > 2 {
                return nil
            }
            for character in color {
                if !hexArray.contains(String(character)) {
                    return nil
                }
            }
        }
        
        let valueR = CGFloat(UInt8(strtoul(r, nil, 16)))/255
        let valueG = CGFloat(UInt8(strtoul(g, nil, 16)))/255
        let valueB = CGFloat(UInt8(strtoul(b, nil, 16)))/255
        
        self.init(red: valueR, green: valueG, blue: valueB, alpha: a)
    }
}
