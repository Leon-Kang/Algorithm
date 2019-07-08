//
//  Compress.swift
//  Algorithm
//
//  Created by Leon Kang on 2019/7/8.
//  Copyright © 2019 LeonKang. All rights reserved.
//

import Foundation


func compress(str: String) -> String {
    let inputArr = Array(str)
    var outputStr = ""
    var currentChar: Character
    var currentCount = 1
    let length = inputArr.count
    for i in 0 ..< length {
        currentChar = inputArr[i]
        if i + 1 >= length {
            break
        }
        if currentChar == inputArr[i+1] {
            currentCount += 1
        } else {
            outputStr += "\(currentChar)\(currentCount)"
            currentChar = inputArr[i+1]
            currentCount = 1
        }
    }
    return outputStr
}
