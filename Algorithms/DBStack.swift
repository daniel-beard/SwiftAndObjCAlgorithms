//
//  DBStack.swift
//  Algorithms
//
//  Created by Daniel Beard on 12/17/14.
//  Copyright (c) 2014 Daniel Beard. All rights reserved.
//

import Foundation

struct DBStack<T> {
    private var array: [T]
    
    init() {
        array = [T]()
    }
    
    func empty() -> Bool {
        return array.count == 0
    }
    
    mutating func push(element: T) {
        array.append(element)
    }
    
    mutating func pop() -> T? {
        let lastValue = array.last
        if array.count > 0 {
            array.removeLast()
        }
        return lastValue
    }
}