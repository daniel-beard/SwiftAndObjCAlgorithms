//
//  DBQueue.swift
//  Algorithms
//
//  Created by Daniel Beard on 12/17/14.
//  Copyright (c) 2014 Daniel Beard. All rights reserved.
//

import Foundation

struct DBQueue<T> {
    private var array: [T]
    
    init() {
        array = [T]()
    }
    
    func empty() -> Bool {
        return array.count == 0
    }
    
    mutating func enqueue(element: T) {
        array.append(element)
    }
    
    mutating func dequeue() -> T? {
        if array.count > 0 {
            return array.removeAtIndex(0)
        }
        return nil
    }
}