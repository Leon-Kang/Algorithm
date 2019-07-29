//
//  main.swift
//  Algorithm
//
//  Created by LeonKang on 2019/4/14.
//  Copyright © 2019 LeonKang. All rights reserved.
//

import Foundation


let str = "abcdaaadddsssdsssdwdefsdfsdfsdvxcdfdgggfdgdffffffffffffdddfggggggggggg%%%%$$$333##@@@%%^^&&&&&&**(()(((())    %%^66"
let result = compress(str: str)
print("\(str) : \(str.lengthOfBytes(using: .utf8)) \n \(result) : \(result.lengthOfBytes(using: .utf8))")

let resultArr = shuffleArray(array: testArr)
print("shuffle: \(resultArr)")
