//
//  Delay.swift
//  Pods
//
//  Created by Filip Fajdetic on 30/01/2017.
//
//

import Foundation

public func delay(seconds: Double, queue: DispatchQueue , completion: @escaping ()->Void) {
    let popTime = DispatchTime(uptimeNanoseconds: UInt64(seconds*Double(NSEC_PER_SEC)))
    queue.asyncAfter(deadline: popTime) { 
        completion()
    }
}
