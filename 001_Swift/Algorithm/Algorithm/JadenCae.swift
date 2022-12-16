//
//  JadenCae.swift
//  Algorithm
//
//  Created by Jooyoung Lee on 2022/12/16.
//

import Foundation

/*
 문제 설명

 JadenCase란 모든 단어의 첫 문자가 대문자이고, 그 외의 알파벳은 소문자인 문자열입니다. 단, 첫 문자가 알파벳이 아닐 때에는 이어지는 알파벳은 소문자로 쓰면 됩니다. (첫 번째 입출력 예 참고)
 문자열 s가 주어졌을 때, s를 JadenCase로 바꾼 문자열을 리턴하는 함수, solution을 완성해주세요.
 제한 조건
 s는 길이 1 이상 200 이하인 문자열입니다.
 s는 알파벳과 숫자, 공백문자(" ")로 이루어져 있습니다.
 숫자는 단어의 첫 문자로만 나옵니다.
 숫자로만 이루어진 단어는 없습니다.
 공백문자가 연속해서 나올 수 있습니다.

 제한 조건
 s는 길이 1 이상 200 이하인 문자열입니다.
 s는 알파벳과 숫자, 공백문자(" ")로 이루어져 있습니다.
 숫자는 단어의 첫 문자로만 나옵니다.
 숫자로만 이루어진 단어는 없습니다.
 공백문자가 연속해서 나올 수 있습니다.
 

 */

func solution(_ s:String) -> String {
    let arr = s.components(separatedBy: " ")
    var StringArr = Array(repeating: [String](), count: arr.count)
    var result = Array(repeating: String(), count: arr.count)
    for item in 0..<arr.count {
        StringArr[item] = arr[item].map{String($0).lowercased()}
        if StringArr[item] != [] {
        StringArr[item][0] = StringArr[item][0].uppercased()
        }
        result[item] = StringArr[item].joined(separator: "")
    }
    var joinResult = result.joined(separator: " ")
 
    return joinResult
}

