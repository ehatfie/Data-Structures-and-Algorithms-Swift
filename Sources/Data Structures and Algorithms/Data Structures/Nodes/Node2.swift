//
//  File.swift
//  
//
//  Created by Erik Hatfield on 5/24/22.
//

import Foundation

public class Node2 {
    public var value: Int
    public var next: Node2?
    public var prev: Node2?
    
    public init(value: Int, next: Node2?, prev: Node2?) {
        self.value = value
        self.next = next
        self.prev = prev
    }
}
