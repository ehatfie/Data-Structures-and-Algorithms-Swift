//
//  Stack.swift
//  
//
//  Created by Erik Hatfield on 5/23/22.
//

import Foundation

public protocol Stack {
    func push(value: Int)
    func pop() -> Int?
    func top() -> Int?
    func isEmpty() -> Bool
    func printStack(_ prefix: String)
}
