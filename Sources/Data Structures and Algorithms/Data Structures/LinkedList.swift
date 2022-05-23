//
//  LinkedList.swift
//  
//
//  Created by Erik Hatfield on 5/23/22.
//

import Foundation


public class LinkedList {
    public var head: Node?
    public var tail: Node?
    
    public var length: Int
    
    public init(head: Node) {
        self.head = head
        self.tail = head
        self.length = 1
    }
    
    public static func generate(count: Int) -> LinkedList? {

        return nil
    }
    
    public static func defaultList() -> LinkedList {
        let list = LinkedList(head: Node(value: 1, next: nil))
        list.insertEnd(value: 2)
        list.insertEnd(value: 3)
        return list
    }
    
    public func printList(prefix: String = "") {
        print(prefix)
        guard let head = self.head else {
            return
        }
        traverseNodes(head: head, index: 0)
    }
    
    /**
     Return Node at index iteritively
     */
    public func getItem(index: Int, recursive: Bool) -> Node? {
        print("get item index ", index)
        var count = 0
        var current: Node? = head
        
        if !recursive {
            while current?.next != nil {
                // exit condition
                guard count != index else {
                    return current
                }
                
                current = current?.next
                count += 1
            }
        } else {
            return getItemR(head: current!, index: index, count: 0)
        }
        
        return nil
    }
    
    /**
        Return Node at index recursively
     */
    public func getItemR(head: Node, index: Int, count: Int) -> Node? {
        guard index != count else {
            return head
        }
        
        guard let node = head.next else {
            return nil
        }
        
        return getItemR(head: node, index: index, count: count + 1)
    }
    
    public func traverseNodes(head: Node, index: Int) {
        print("index \(index) value \(head.value)")
        
        guard let node = head.next else {
            return
        }
        
        traverseNodes(head: node, index: index + 1)
    }
    
    public func containsValue(value: Int) -> Bool {
        guard let head = self.head else {
            return false
        }
        return containsValue(head: head, value: value)
    }
    
    /**
        Returns true or false if the list ocntains a node with value
     */
    public func containsValue(head: Node, value: Int) -> Bool {
        var current: Node? = head
        
        while current != nil {
            if current?.value == value {
                return true
            }
            
            current = current?.next
        }
        
        return false
    }
}

extension LinkedList {
    public func insertFront(value: Int) {
        let newNode = Node(value: value, next: head)
        
        head = newNode
        length += 1
    }
    
    public func insertEnd(value: Int) {
        let newNode = Node(value: value, next: nil)
        
        guard self.head != nil else {
            head = newNode
            tail = newNode
            return
        }
        
        tail?.next = newNode
        tail = newNode
        length += 1
    }
    
    public func remove(value: Int) -> Node? {
        var current: Node? = head
        var previous: Node? = nil
        
        guard head?.value != value else {
            let current = head
            self.head = current?.next
            return current
        }

        while current != nil && current?.value != value {
            previous = current
            current = current?.next
        }
        
        let next = current?.next
        if next == nil {
            print("nil next ")
        }
        
        previous?.next = next
        
        return current
    }
}


