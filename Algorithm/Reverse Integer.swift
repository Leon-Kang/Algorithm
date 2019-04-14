//
//  Reverse Integer.swift
//  Algorithm
//
//  Created by LeonKang on 2019/4/14.
//  Copyright © 2019 LeonKang. All rights reserved.
//

import Foundation

func reverse_1(_ x: Int) -> Int {
    if x > Int32.max || x < Int32.min {
        return 0
    }
    let i = ((x >= 0) ? 1 : -1)
    let str = String( String(abs(x)).reversed())
    let result = Int(str)! * i
    if result > Int32.max || result < Int32.min {
        return 0
    }
    return result
}

func reverse(_ x: Int) -> Int {
    if x > Int32.max || x < Int32.min {
        return 0
    }
    let i = ((x >= 0) ? 1 : -1)
    var input = abs(x)
    var result: Int = 0
    while input > 0 {
        let temp = result * 10 + input % 10
        if temp / 10 != result {
            return 0
        }
        result = temp
        input = input / 10
    }
    if result > Int32.max || result < Int32.min {
        return 0
    }
    return result * i
}
