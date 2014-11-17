//
//  SelectionSort.swift
//  Algorithms
//
//  Created by Daniel Beard on 11/16/14.
//  Copyright (c) 2014 Daniel Beard. All rights reserved.
//

import Foundation

public func SelectionSort<T: Comparable>(inputArray: [T]) -> [T] {
    
    var array = inputArray
    if array.count <= 1 {
        return array;
    }
   
    for i in 0..<array.count {
        var minIndex = i
        for var j = i; j<array.count; j++ {
            minIndex = (array[minIndex] < array[j]) ? minIndex : j
        }
        swap(&array[i], &array[minIndex])
    }
    return array
}