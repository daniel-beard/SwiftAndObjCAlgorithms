//
//  BubbleSort.swift
//  Algorithms
//
//  Created by Daniel Beard on 11/16/14.
//  Copyright (c) 2014 Daniel Beard. All rights reserved.
//

import Foundation

public func BubbleSort<T: Comparable>(inputArray: [T]) -> [T] {
    
    var array = inputArray
   
    for i in 0..<array.count {
        for var j = array.count - 1; j > i; j-- {
            if array[j] < array[j-1] {
                swap(&array[i], &array[j])
            }
        }
    }
   
    return array
}