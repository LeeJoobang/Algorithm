//
//  행렬의덧셈.swift
//  Algorithm
//
//  Created by Joobang on 2023/04/01.
//

import Foundation

/*
 행렬의 덧셈
 문제 설명
 행렬의 덧셈은 행과 열의 크기가 같은 두 행렬의 같은 행, 같은 열의 값을 서로 더한 결과가 됩니다. 2개의 행렬 arr1과 arr2를 입력받아, 행렬 덧셈의 결과를 반환하는 함수, solution을 완성해주세요.

 제한 조건
 행렬 arr1, arr2의 행과 열의 길이는 500을 넘지 않습니다.
 입출력 예
 arr1             arr2             return
 [[1,2],[2,3]]    [[3,4],[5,6]]    [[4,6],[7,9]]
 [[1],[2]]        [[3],[4]]        [[4],[6]]
 */

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result = [[Int]](repeating: [Int](repeating: 0, count: arr1[0].count), count: arr1.count)
    for i in 0..<arr1.count{
        // a1[0][0], a1[0][1], a1[1][0], a1[1][1]
        // 단순하게 주어지는건 2번밖에 돌지 않는다.
        // a[0][0], a[1][1]
        // if 4번이 돈다면 - a[0][0], a[1][1], a[2][2]. a[3][3]이 가능할텐데, 이때 빠지게 되는 값
        // a[0][1], [0][2]. [0][3]을 어떻게 포함시킬까?
        // a[0][1], a[1][0] 이 생략된다.
        // 2번이 돌지 3번이 돌지 알 수 없다.
        for j in 0..<arr1[0].count{
//            print("i: \(i)")
//            print("j: \(j)")
//            print(arr1[i][j])
            // arr1의 값이 순차적으로 들어오게 된다. 그럼 result에 이 값을 넣어보자
            // result 값에 arr1을 넣었다. 추가적으로 arr2를 넣어보자
            result[i][j] += arr1[i][j] + arr2[i][j]
        }
    }

    return result
}
