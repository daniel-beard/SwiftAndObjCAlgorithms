//
//  Array+Additions.swift
//  Algorithms
//
//  Created by Daniel Beard on 12/17/14.
//  Copyright (c) 2014 Daniel Beard. All rights reserved.
//

import Foundation

extension Array {
    
    // Out of place shuffle
    func shuffle() -> [Element] {
        var resultArray = self
        for i in 0..<resultArray.count {
            let randomIndex = random(i, max: resultArray.count)
            swap(&resultArray[i], &resultArray[randomIndex])
        }
        return resultArray
    }
    
    // In-place Fisher Yates Shuffle 
    // O(n), space requirement O(1)
    mutating func fisherYatesShuffle() {
        let lastIndex = self.count - 1
        for i in 0..<self.count {
            let randomChoiceIndex = random(i, max: lastIndex)
            swap(&self[i], &self[randomChoiceIndex])
        }
    }
}