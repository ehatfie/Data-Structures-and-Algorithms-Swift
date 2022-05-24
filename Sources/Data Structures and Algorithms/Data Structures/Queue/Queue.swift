//
//  queue.swift
//  
//
//  Created by Erik Hatfield on 5/24/22.
//

import Foundation

protocol QueueI {
    var data: [Int?] { get set }
    var frontIndex: Int { get set }
    var rearIndex: Int { get set }
    var maxSize: Int { get set }
    
    func enqueue(value: Int)
    func dequeue()
}

public class CircularQueue: QueueI {
    var data: [Int?]
    var frontIndex: Int
    var rearIndex: Int
    var maxSize: Int
    
    public init(maxSize: Int) {
        self.data = [Int?](repeating: nil, count: 10)
        self.frontIndex = 0
        self.rearIndex = -1
        self.maxSize = maxSize
        
        for i in 0..<maxSize {
            enqueue(value: i)
        }
        enqueue(value: 11)
        printMe(data)
    }
    
    func enqueue(value: Int) {
        var targetIndex = rearIndex + 1
        
        printMe(data)
        
        if targetIndex == maxSize {
            targetIndex = 0
            frontIndex += 1
        }
        
        data[targetIndex] = value
        rearIndex = targetIndex
        
        
        print("frontIndex: \(frontIndex) rearIndex: \(rearIndex) \n")
    }
    
    func dequeue() {
        let entry = data[frontIndex]
        data[frontIndex] = nil
        let newFront = frontIndex
        
        print("old first \(frontIndex) rear \(rearIndex) new first \(newFront)")
    }
    
    func printMe(_ numbers: [Int?]) {
        let nums = numbers.compactMap({$0})
        let string = "values:[" + nums.reduce("", { result, next -> String in
            if result.isEmpty {
                return "\(next)"
            }
            let prefix = result.isEmpty ? "" : ","
            return result + prefix + "\(next)"
        }) + "]"
        
        print(string)
    }
}
