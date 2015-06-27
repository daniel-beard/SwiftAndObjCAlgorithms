//
//  Array+Additions.swift
//  Algorithms
//
//  Created by Daniel Beard on 12/17/14.
//  Copyright (c) 2014 Daniel Beard. All rights reserved.
//

import Foundation

extension Array {
    func shuffle() -> [T] {
        var resultArray = self
        for i in 0..<resultArray.count {
            let randomIndex = random(i, max: resultArray.count)
            swap(&resultArray[i], &resultArray[randomIndex])
        }
        return resultArray
    }
}