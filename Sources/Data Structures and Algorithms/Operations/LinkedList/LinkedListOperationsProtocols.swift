//
//  LinkedListOperations.swift
//  
//
//  Created by Erik Hatfield on 5/23/22.
//

import Foundation


class Operations {
    
}


public protocol LinkedListOperations {
    static func getNode(list: LinkedList, index: Int)
    static func containsValue(list: LinkedList, value: Int)
    static func insertFront(list: LinkedList, value: Int)
    static func insertEnd(list: LinkedList, value:Int)
    static func remove(list: LinkedList, value: Int)
}


