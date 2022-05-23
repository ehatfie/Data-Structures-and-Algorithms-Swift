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
    
        let list = createLinkedList()
        
        Operations.getNode(list: list, index: 2)
        Operations.containsValue(list: list, value: 3)
        Operations.insertFront(list: list, value: 5)
        Operations.remove(list: list, value: 5)
        
    }
    
    func createLinkedList() -> LinkedList {
        return LinkedList.defaultList()
    }
}
