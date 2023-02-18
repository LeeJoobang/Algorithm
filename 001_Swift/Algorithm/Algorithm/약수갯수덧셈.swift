//
//  약수갯수덧셈.swift
//  Algorithm
//
//  Created by Jooyoung Lee on 2023/02/18.
//

import Foundation

/*
 약수의 개수와 덧셈
 문제 설명
 두 정수 left와 right가 매개변수로 주어집니다. left부터 right까지의 모든 수들 중에서, 약수의 개수가 짝수인 수는 더하고, 약수의 개수가 홀수인 수는 뺀 수를 return 하도록 solution 함수를 완성해주세요.

 제한사항
 1 ≤ left ≤ right ≤ 1,000
 입출력 예
 left    right    result
 13    17    43
 24    27    52
 */


func solution(_ left:Int, _ right:Int) -> Int {
    var arr = [Int]()
    for item in left...right{
        // 약수 item %
        var temp = [Int]()
        for case1 in 1...item {
            if item % case1 == 0 {
                temp.append(case1)
            }
        }
        if temp.count % 2 == 0 {
            arr.append(item)
        } else {
            arr.append(-item)
        }
    }
    return arr.reduce(0, +)
}

print(solution(13, 17))
print(solution(24, 27))
