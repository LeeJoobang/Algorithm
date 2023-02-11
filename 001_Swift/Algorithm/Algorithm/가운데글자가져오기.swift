//
//  가운데글자가져오기.swift
//  Algorithm
//
//  Created by Jooyoung Lee on 2023/02/11.
//

import Foundation

/*
 가운데 글자 가져오기
 문제 설명

 단어 s의 가운데 글자를 반환하는 함수, solution을 만들어 보세요. 단어의 길이가 짝수라면 가운데 두글자를 반환하면 됩니다.
 재한사항
 s는 길이가 1 이상, 100이하인 스트링입니다.
 입출력 예
 s    return
 "abcde"    "c"
 "qwer"    "we
 */

// 먼저 단어의 갯수를 확인 - 짝수 일 경우, 홀수 일 경우 2가지를 찾는다.

func solution(_ s:String) -> String {
    let countNum = s.count
    let arr = s.map{$0}
    let value: String
    if countNum % 2 != 0 {
        let index = (countNum / 2) + 1
        value = String(describing: arr[index - 1])
        return value

    } else {
        let index = countNum / 2
        value = String(describing: arr[index - 1])+String(describing: arr[index])
        return value
    }
    return value
}

print(solution("abcdefghijk")) // 11 - 1개, f
print(solution("qwer")) // 1, 2번째 출력
