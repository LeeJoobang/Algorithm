//
//  평균구하기.swift
//  Algorithm
//
//  Created by Jooyoung Lee on 2022/10/20.
//

import Foundation

func solution(_ arr:[Int]) -> Double {
    let sum = Double(arr.reduce(0) { $0 + $1 })
    let count = Double(arr.count)
    let result = sum / count
    return result
}
