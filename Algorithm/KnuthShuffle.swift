//
//  KnuthShuffle.swift
//  Algorithm
//
//  Created by Leon Kang on 2019/7/29.
//  Copyright © 2019 LeonKang. All rights reserved.
//

let testArr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

import Foundation

func shuffleArray(array: [Any]) -> [Any] {
    var shuffleArr = array
    for i in 0 ... shuffleArr.endIndex {
        let randomRange = i + 1 ..< shuffleArr.endIndex
        if randomRange.isEmpty {
            break
        }
        shuffleArr.swapAt(i, NSInteger.random(in: randomRange))
    }
    return shuffleArr
}

