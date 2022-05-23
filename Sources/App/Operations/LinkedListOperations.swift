//
//  File.swift
//  
//
//  Created by Erik Hatfield on 5/23/22.
//

import Foundation
import Data_Structures_and_Algorithms

class Operations {
    
}

extension Operations: LinkedListOperations {
    static func getNode(list: LinkedList, index: Int) {
        self.run(list) { _ = $0.getItem(index: index, recursive: true)}
    }
    
    static func containsValue(list: LinkedList, value: Int) {
        self.run(list) { list in
            let result = list.containsValue(value: value)
            print("List contains \(value): \(result)")
        }
    }
    
    static func insertFront(list: LinkedList, value: Int) {
        print("Operations - insert front \(value)")
        list.printList(prefix: "Pre")
        list.insertFront(value: value)
        list.printList(prefix: "Post")
        print("")
    }
    
    static func remove(list: LinkedList, value: Int) {
        print("Operations - remove \(value)")
        self.run(list) { _ = $0.remove(value: value) }
    }
    
    static func run(_ list: LinkedList? = nil, closure: (LinkedList) -> Void) {
        let innerList = list ?? .defaultList()
        
        innerList.printList(prefix: "Pre")
        closure(innerList)
        innerList.printList(prefix: "Post")
        
        print("")
    }
    
}
