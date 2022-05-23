//
//  LinkedList.swift
//  
//
//  Created by Erik Hatfield on 5/23/22.
//

import Foundation


public class LLStack: Stack {
    var data: LinkedList
    
    public init() {
        self.data = LinkedList()
    }
    
    public func printStack(_ prefix: String) {
        data.printList(prefix: prefix)
    }
    
    public func push(value: Int) {
        data.insertFront(value: value)
    }
    
    public func pop() -> Int? {
        return data.pop()?.value
    }
    
    public func top() -> Node? {
        return data.head
    }
    
    public func isEmpty() -> Bool {
        return data.head == nil
    }
}
