//
//  InsertionSort.swift
//  Algorithms
//
//  Created by Daniel Beard on 11/16/14.
//  Copyright (c) 2014 Daniel Beard. All rights reserved.
//

import Foundation

public func InsertionSort<T: Comparable>(inputArray: [T]) -> [T] {
    
    var array = inputArray
    if array.count <= 1 {
        return array;
    }
    
    for j in 1..<array.count {
        let key:T = array[j]
        
        var i = j - 1
        while (i >= 0 && array[i] > key) {
            array[i+1] = array[i]
            i--
        }
        array[i+1] = key
    }
    return array
}