//
//  SwiftTest.swift
//  Algorithms
//
//  Created by Daniel Beard on 11/16/14.
//  Copyright (c) 2014 Daniel Beard. All rights reserved.
//

import Foundation

@objc public class SwiftTest: NSObject {
    
    public func start() {
        
        var array = [5, 2, 3, 1, 7]
        var stringArray = ["c", "a", "z", "b", "t"]
        
        // Bubble Sort
        println("BubbleSort Sorted Int array: \(BubbleSort(array))")
        println("BubbleSort Sorted string array: \(BubbleSort(stringArray))")
        
        // Insertion Sort
        println("Insertion Sort Sorted Int array: \(InsertionSort(array))")
        println("Insertion Sort Sorted string array: \(InsertionSort(stringArray))")
        
        // Selection Sort
        println("Selection Sort Sorted Int array: \(SelectionSort(array))")
        println("Selection Sort Sorted string array: \(SelectionSort(stringArray))")
        
        //TODO:
        println("Array: \(array)")
        println("Shuffled array: \(array.shuffle())")
        
        var stack = DBStack<String>()
        stack.push("a")
        stack.push("b")
        println("Pop: \(stack.pop())")
        println("Pop: \(stack.pop())")
        println("Pop: \(stack.pop())")
        
        var queue = DBQueue<Int>()
        for i in 0..<4 {
            queue.enqueue(i)
        }
        for i in 0..<4 {
            println("Dequeue: \(queue.dequeue())")
        }
    }
}