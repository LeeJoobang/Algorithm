//
//  자연수뒤집어배열만들기.swift
//  Algorithm
//
//  Created by Jooyoung Lee on 2022/10/24.
//

import Foundation

func solution(_ n:Int64) -> [Int] {
    var answer = [Int]()
    for i in String(n).map { $0 }.reversed(){
        answer.append(Int(String(i))!)
    }
    return answer
}

print(solution(12345))
