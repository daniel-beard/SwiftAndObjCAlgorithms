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
        
        let array = [5, 2, 3, 1, 7]
        let stringArray = ["c", "a", "z", "b", "t"]
        
        // Bubble Sort
        print("BubbleSort Sorted Int array: \(BubbleSort(array))")
        print("BubbleSort Sorted string array: \(BubbleSort(stringArray))")
        
        // Insertion Sort
        print("Insertion Sort Sorted Int array: \(InsertionSort(array))")
        print("Insertion Sort Sorted string array: \(InsertionSort(stringArray))")
        
        // Selection Sort
        print("Selection Sort Sorted Int array: \(SelectionSort(array))")
        print("Selection Sort Sorted string array: \(SelectionSort(stringArray))")
        
        print("Array: \(array)")
        print("Shuffled array: \(array.shuffle())")
        
        var stack = DBStack<String>()
        stack.push("a")
        stack.push("b")
        print("Pop: \(stack.pop())")
        print("Pop: \(stack.pop())")
        print("Pop: \(stack.pop())")
        
        var queue = DBQueue<Int>()
        for i in 0..<4 {
            queue.enqueue(i)
        }
        for _ in 0..<4 {
            print("Dequeue: \(queue.dequeue())")
        }
        
        var shuffleArray = [1, 2, 3, 4, 5, 6]
        shuffleArray.fisherYatesShuffle()
        print("Fisher-Yates shuffled array: \(shuffleArray)")
        
        var tree = Tree<Int>()
        tree = tree.insert(3)
        tree = tree.insert(2)
        tree = tree.insert(7)
        tree = tree.insert(1)
        tree = tree.insert(5)
        tree = tree.insert(6)
        tree = tree.insert(9)
        tree = tree.insert(7)
        print("Tree contains 2? \(tree.contains(2))")
        tree.inOrderTraversal()
        tree.inOrderPrettyPrint(tree)
    }
}