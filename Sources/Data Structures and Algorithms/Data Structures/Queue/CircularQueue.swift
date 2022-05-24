//
//  File.swift
//  
//
//  Created by Erik Hatfield on 5/24/22.
//

import Foundation

public class CircularQueue: CircularQueueI {
    public var data: [Int?]
    public var frontIndex: Int
    public var rearIndex: Int
    public var maxSize: Int
    
    public init(maxSize: Int) {
        self.data = [Int?](repeating: nil, count: 10)
        self.frontIndex = 0
        self.rearIndex = -1
        self.maxSize = maxSize
    }
    
    public func enqueue(value: Int) {
        var targetIndex = rearIndex + 1
        
        printData()
        
        if targetIndex == maxSize {
            targetIndex = 0
            frontIndex += 1
        }
        
        data[targetIndex] = value
        rearIndex = targetIndex
    }
    
    public func dequeue() -> Int? {
        let entry = data[frontIndex]
        
        data[frontIndex] = nil
        
        let newFront = frontIndex + 1
        frontIndex = newFront
        
        return entry
    }
    
    public func peek() -> Int? {
        return data[frontIndex]
    }
    
    public func isEmpty() -> Bool {
        return frontIndex == rearIndex
    }
    
    public func printData() {
        let prefix = "["
        let content = data.reduce("", { result, next -> String in
            let numString = next != nil ? " \(next!)" : " _"
            
            if result.isEmpty {
                return numString
            }
            
            let prefix = result.isEmpty ? "" : ","
            return result + prefix + numString
        })
        let postfix = "]"
        let string = prefix + content + postfix
        
        print(string)
    }
}
