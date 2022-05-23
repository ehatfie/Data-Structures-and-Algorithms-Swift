//
//  File.swift
//  
//
//  Created by Erik Hatfield on 5/23/22.
//

import Foundation


public class ArrayStack: Stack {
    var maxLength: Int
    var length: Int
    
    var data: [Int]
    
    public init(maxLength: Int) {
        self.maxLength = maxLength
        self.length = 0
        self.data = []
    }
    
    public func printStack(_ prefix: String) {
        data.forEach { print($0) }
    }

    public func push(value: Int) {
        guard length < maxLength else {
            print("Stack Overflow")
            return
        }
        data.append(value)
        length += 1
    }

    public func pop() -> Int? {
        guard !data.isEmpty else {
            print("Stack Underflow")
            return nil
        }
        
        length -= 1
        return data.popLast()
    }
    
    public func top() -> Int? {
        guard length > 0 else {
            return nil
        }
        return data[length - 1]
    }
    
    public func isEmpty() -> Bool {
        return data.isEmpty
    }
    
   
}
