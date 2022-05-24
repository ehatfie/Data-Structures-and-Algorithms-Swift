//
//  LLQueue.swift
//  
//
//  Created by Erik Hatfield on 5/24/22.
//

import Foundation


public class LLQueue: LLQueueI {
    public var front: Node?
    public var rear: Node?
    
    public init() {
        
    }
    
    public func enqueue(value: Int) {
        let newNode = Node(value: value, next: nil)
        
        guard front != nil else {
            front = newNode
            rear = newNode
            return
        }
        
        rear?.next = newNode
        rear = newNode
    }
    
    public func dequeue() -> Int? {
        let current = front
        
        front = front?.next
        
        return current?.value
    }
    
    public func peek() -> Int? {
        return front?.value
    }
    
    public func isEmpty() -> Bool {
        return front == nil
    }
    
    public func printData() {
        var current = front
        var count = 0
        var numberString = ""
        while current != nil {
            let prefix = numberString.isEmpty ? "" : " -> "
            numberString += prefix + "\(current!.value)"
            count += 1
            current = current?.next
        }
        
        print(numberString)
    }
}
