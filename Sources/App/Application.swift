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
        // stackOperations(stackOps: StackOps2.self)
        // queueOperations()
        treeOperations()
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
        let llOps = StackOps2(stack: stack)
        
        llOps.run()
        
        let arrayOps = StackOps2(stack: ArrayStack(maxLength: 10))
    }
    
    func queueOperations() {
        let ccQueueOps = QueueOps(queue: CircularQueue(maxSize: 10))
        ccQueueOps.run()
        
        let llQueueOps = QueueOps(queue: LLQueue())
        llQueueOps.run()
        
        let deQueueOps = QueueOps(queue: DEQueue())
        deQueueOps.run()
    }
    
    func treeOperations() {
        let bstOps = BSTOps()
        
        var bst = bstOps.createBST()
        bst = bstOps.insert(values: [5, 6, 4, 3], tree: bst)
        bst.printTree()
//        bst = bstOps.insert(value: 5, tree: bst)
//        bst = bstOps.insert(value: 6, tree: bst)
//        bst = bstOps.insert(value: 4, tree: bst)
    }
    
    func createLinkedList() -> LinkedList {
        return LinkedList.defaultList()
    }
}
