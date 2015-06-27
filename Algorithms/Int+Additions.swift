//
//  Int+Additions.swift
//  Algorithms
//
//  Created by Daniel Beard on 12/17/14.
//  Copyright (c) 2014 Daniel Beard. All rights reserved.
//

import Foundation

// Returns a random Int in the range min..max
func random(min: Int, max: Int) -> Int {
    let range = max - min
    let value: Int = Int(arc4random_uniform(UInt32(range))) + min
    return value
}

// Returns power of an Int
// Example 2 ^^ 2 = 4
infix operator ^^ { }
func ^^(radix: Int, power: Int) -> Int {
    return Int(pow(Double(radix), Double(power)))
}