//
//  수박수.swift
//  Algorithm
//
//  Created by Jooyoung Lee on 2023/02/12.
//

import Foundation

func solution(_ n:Int) -> String {
    var arr = [String]()
    for item in 0...n-1 {
        if item % 2 == 0 {
            arr.append("수")
        } else {
            arr.append("박")
        }
    }
    let result = arr.joined()
    return result
}

print(solution(3))
print(solution(4))
