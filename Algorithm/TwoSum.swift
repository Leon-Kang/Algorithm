//
//  TwoSum.swift
//  Algorithm
//
//  Created by LeonKang on 2019/4/14.
//  Copyright © 2019 LeonKang. All rights reserved.
//

import Foundation

func twosum(_ nums: [Int], _ target: Int) -> [Int] {
    var result = [Int]()
    var index = 0
    for num in nums {
        let goals = target - num
        if let firstIndex = nums.firstIndex(of: goals) {
            var secondIndex = index
            if firstIndex == secondIndex {
                secondIndex = nums.lastIndex(of: num)!
            }
            
            if firstIndex != secondIndex {
                result = [firstIndex, secondIndex].sorted( by: { $0 < $1 } )
                break
            }
            
        }
        index += 1
    }
    
    return result
}

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    if nums.count <= 1 {
        return [0]
    }
    var dictionary = Dictionary<Int, Int>()
    for i in 0 ..< nums.count {
        if dictionary.keys.contains( nums[i] ) {
            return [dictionary[nums[i]]!, i]
        } else {
            dictionary[target - nums[i]] = i
        }
    }
    return [0]
}
