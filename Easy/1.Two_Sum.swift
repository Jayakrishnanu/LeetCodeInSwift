//
//  1.Two_Sum.swift
//  
//
//  Created by Jayakrishnan u on 7/18/24.
//

import Foundation

//Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
//
//You may assume that each input would have exactly one solution, and you may not use the same element twice.
//
//You can return the answer in any order.

func twoSum(_ numbers: [Int], target: Int) -> [Int] {
    guard numbers.count > 1 else { return [] }
    var mappingArrayIndex = [Int: Int]()
    for (index, num) in numbers.enumerated() {
        if let secondIndex = mappingArrayIndex[target - num] {
            return [index, secondIndex]
        } else {
            mappingArrayIndex[num] = index
        }
    }
    return []
}

// Tests
print(twoSum([2, 7, 11, 15], target: 9))
print(twoSum([3, 2, 4], target: 6))
print(twoSum([3, 3], target: 6))
