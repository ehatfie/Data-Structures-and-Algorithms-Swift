//
//  StackOperations.swift
//  
//
//  Created by Erik Hatfield on 5/23/22.
//

import Foundation
import Data_Structures_and_Algorithms


class StackOps: StackOperations {
    static func push(stack: Stack, value: Int) {
        stack.printStack("Pre")
        stack.push(value: value)
        stack.printStack("Post")
    }
    
    static func pop(stack: Stack) {
        let result = stack.pop()
        print("popped ", result)
    }
    
    static func top(stack: Stack) {
        let top = stack.top()
        print("top \(top?.value)")
    }
    
    static func isEmpty(stack: Stack) {
        print("is empty \(stack.isEmpty())")
    }
}

class StackOps2: StackOperations2 {
    var stack: Stack
    
    init(stack: Stack) {
        self.stack = stack
    }
    
    func push(value: Int) {
        stack.printStack("Pre")
        stack.push(value: value)
        stack.printStack("Post")
    }
    
    func pop() {
        let result = stack.pop()
        print("popped ", result)
    }
    
    func top() {
        let top = stack.top()
        print("top \(top?.value)")
    }
    
    func isEmpty() {
        print("is empty \(stack.isEmpty())")
    }
    
    func run() {
        isEmpty()
        push(value: 1)
        isEmpty()
        push(value: 2)
        top()
        pop()
        pop()
        isEmpty()
    }
}
