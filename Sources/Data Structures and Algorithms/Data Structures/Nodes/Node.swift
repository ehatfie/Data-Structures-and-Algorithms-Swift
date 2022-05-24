//
//  Node.swift
//  
//
//  Created by Erik Hatfield on 5/23/22.
//

import Foundation

public class Node {
    public let value: Int
    public var next: Node?
    
    public init(value: Int, next node: Node?) {
        self.value = value
        self.next = node
    }
}
