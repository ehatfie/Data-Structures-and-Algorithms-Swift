//
//  Application.swift
//  
//
//  Created by Erik Hatfield on 5/23/22.
//

import Foundation
import Data_Structures_and_Algorithms


public final class Application {
    
    public init() {
        
    }
    
    public func run() {
        print("app run")
    
        // linkedListOperations()
        stackOperations(stackOps: StackOps2.self)
    }
    
    func linkedListOperations() {
        let list = createLinkedList()
        Operations.getNode(list: list, index: 2)
        Operations.containsValue(list: list, value: 3)
        Operations.insertFront(list: list, value: 5)
        Operations.insertEnd(list: list, value: 10)
        Operations.remove(list: list, value: 5)
    }
    
    func stackOperations(stackOps: StackOperations2.Type) {
        let stack = LLStack()
        let ops = StackOps2(stack: stack)
        
        ops.run()
    }
    
    func createLinkedList() -> LinkedList {
        return LinkedList.defaultList()
    }
}
