//
//  BinaryTree.swift
//  Algorithms
//
//  Created by Daniel Beard on 7/22/15.
//  Copyright © 2015 Daniel Beard. All rights reserved.
//

import Foundation

indirect enum Tree<Element: Comparable> {
    case Empty
    case Node(Tree<Element>, Element, Tree<Element>)
    
    init() {
        self = .Empty
    }
    
    init(element: Element) {
        self = .Node(.Empty, element, .Empty)
    }
    
    init(_ left: Tree<Element> = .Empty, _ element: Element, _ right: Tree<Element> = .Empty) {
        self = .Node(left, element, right)
    }
}

extension Tree {
    func contains(x: Element) -> Bool {
        switch self {
        case .Empty: return false
        case let .Node(left, element, right):
            if x < element { return left.contains(x) }
            if x > element { return right.contains(x) }
            return true
        }
    }
}

extension Tree {
    func insert(x: Element) -> Tree {
        return insertHelper(x, into: self)
    }
    
    private func insertHelper(x: Element, into tree:Tree) -> Tree {
        switch tree {
        case .Empty:
            return Tree(element: x)
        case let .Node(left, element, right):
            if x < element { return Tree(insertHelper(x, into: left), element, right) }
            if x > element { return Tree(left, element, insertHelper(x, into: right)) }
            return tree
        }
    }
}

extension Tree {
    func inOrderTraversal() {
        inOrderTraversalHelper(self)
    }
    
    private func inOrderTraversalHelper(t: Tree) {
        switch t {
        case .Empty:
            return
        case let .Node(left, element, right):
            inOrderTraversalHelper(left)
            print(element)
            inOrderTraversalHelper(right)
        }
    }
}

extension Tree {
    func inOrderPrettyPrint(t: Tree, indent: Int = 0) {
        let standardIndent = 4
        switch t {
        case .Empty:
            return
        case let .Node(left, element, right):
            var prefixString = ""
            if indent > 0 {
                prefixString = "".join(Array(count: indent, repeatedValue: " "))
            }
            print("\(prefixString)\(element)")
            inOrderPrettyPrint(right, indent: indent+standardIndent)
            inOrderPrettyPrint(left, indent: indent+standardIndent)

        }
    }
}

//TODO: Remove an element