//
//  DEQueue.swift
//  
//
//  Created by Erik Hatfield on 5/24/22.
//

import Foundation

public class DEQueue: DEQueueI {
    public var front: Node2?
    public var rear: Node2?
    
    public init() { }
    
    /** Enqueue to front of queue */
    public func enqueue(value: Int) {
        let newNode = Node2(value: value, next: nil, prev: nil)
        guard front != nil else {
            front = newNode
            rear = newNode
            return
        }
        
        rear?.next = newNode
        newNode.prev = rear
        
        rear = newNode
    }
    
    /** Enqueue to rear of queue */
    public func enqueue2(value: Int) {
        let newNode = Node2(value: value, next: nil, prev: nil)
        
        guard rear != nil else {
            rear = newNode
            front = newNode
            return
        }
        
        rear?.next = newNode
        newNode.prev = rear
        rear = newNode
    }
    
    /** Dequeue from front of queue */
    public func dequeue() -> Int? {
        let current = front
        
        front = front?.next
        front?.prev = nil
        
        return current?.value
    }
    
    /** Dequeue from rear of queue */
    public func dequeue2(value: Int) -> Int? {
        let current = rear
        
        rear = rear?.prev
        rear?.next = nil
        
        return current?.value
    }
    
    public func peek() -> Int? {
        return front?.value
    }
    
    public func peekRear() -> Int? {
        return rear?.value
    }
    
    public func isEmpty() -> Bool {
        return front == nil && rear == nil
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
        
        print("forward: ", numberString)
        numberString = ""
        current = rear
        
        while current != nil {
            let prefix = numberString.isEmpty ? "" : " -> "
            numberString += prefix + "\(current!.value)"
            current = current?.prev
        }
        
        print("reverse: ", numberString)
    }
}
