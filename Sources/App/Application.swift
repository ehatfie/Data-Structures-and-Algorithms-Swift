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
        
        //getNLinkedList(index: 2)
        let list = createLinkedList()
        
        Operations.insertFront(list: list, value: 5)
        Operations.remove(list: list, value: 5)
        
    }
    
    func createLinkedList() -> LinkedList {
        return LinkedList.defaultList()
    }
    
    func getNLinkedList(index: Int) {
        let linkedList = createLinkedList()
        
        let foo = linkedList.getItem(index: index, recursive: true)
        
        print("got foo ", foo)
        
        traverseList(list: linkedList)
    }
    
    func traverseList(list: LinkedList) {
        traverseNodes(head: list.head, index: 0)
    }
    
    func traverseNodes(head: Node, index: Int) {
        print("index \(index) value \(head.value)")
        
        guard let node = head.next else {
            return
        }
        
        traverseNodes(head: node, index: index + 1)
    }
}
