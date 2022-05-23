//
//  File.swift
//  
//
//  Created by Erik Hatfield on 5/23/22.
//

import Foundation

public protocol StackOperations {
    static func push(stack: Stack, value: Int)
    static func pop(stack: Stack)
    static func top(stack: Stack)
    static func isEmpty(stack: Stack)
    

}

public protocol StackOperations2 {
    func push(value: Int)
    func pop()
    func top()
    func isEmpty()
}
