//
//  Jewels and Stones.swift
//  Algorithm
//
//  Created by LeonKang on 2019/4/14.
//  Copyright © 2019 LeonKang. All rights reserved.
//

import Foundation

func numJewelsInStones_1(_ J: String, _ S: String) -> Int {
    var i = 0
    for j in J {
        for s in S {
            if s == j {
                i += 1
            }
        }
    }
    return i
}

func numJewelsInStones(_ J: String, _ S: String) -> Int {
    var i = 0
    for s in S where J.contains(s) {
        i += 1
    }
    return i
}
