//
//  LinkedList.swift
//  
//
//  Created by Erik Hatfield on 5/23/22.
//

import Foundation

public func traverseNodes(head: Node, index: Int) {
    print("index \(index) value \(head.value)")
    
    guard let node = head.next else {
        return
    }
    
    traverseNodes(head: node, index: index + 1)
}


public class LLStack: Stack {
    var head: Node?
    var count: Int
    
    public init() {
        self.head = nil
        self.count = 0
    }
    
    public func printStack(_ prefix: String) {
        print("\(prefix) - \(self.count)")
        guard let head = self.head else {
            return
        }
        traverseNodes(head: head, index: 0)
    }
    
    public func push(value: Int) {
       let newNode = Node(value: value, next: nil)
        
        newNode.next = self.head
        self.head = newNode
        
        count += 1
    }
    
    public func pop() -> Int? {
        guard let current = self.head else {
            return nil
        }
        
        self.head = current.next
        count -= 1
        
        return current.value
    }
    
    public func top() -> Int? {
        return self.head?.value
    }
    
    public func isEmpty() -> Bool {
        return self.head == nil
    }
}
