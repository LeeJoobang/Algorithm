//
//  올바른괄호.swift
//  Algorithm
//
//  Created by Jooyoung Lee on 2022/12/27.
//

import Foundation

/*
 올바른 괄호
 문제 설명
 괄호가 바르게 짝지어졌다는 것은 '(' 문자로 열렸으면 반드시 짝지어서 ')' 문자로 닫혀야 한다는 뜻입니다. 예를 들어
 "()()" 또는 "(())()" 는 올바른 괄호입니다.
 ")()(" 또는 "(()(" 는 올바르지 않은 괄호입니다.
 '(' 또는 ')' 로만 이루어진 문자열 s가 주어졌을 때, 문자열 s가 올바른 괄호이면 true를 return 하고, 올바르지 않은 괄호이면 false를 return 하는 solution 함수를 완성해 주세요.
 제한사항
 문자열 s의 길이 : 100,000 이하의 자연수
 문자열 s는 '(' 또는 ')' 로만 이루어져 있습니다.
 "()()"    true
 "(())()"  true
 ")()("    false
 "(()("    false
 
 문제 이해
 "(((((((()))))" - 먼저갯수가 짝수가 아닐 경우, false
 removefirst = "(", removeLast = ")" - true가 한다고 가정하자.
 그렇게 하려고 했는데, 우선 배열에 담아야 하는데, 구분할 문자열이 존재하지 않는다. 가령, 띄어쓰기라던지
 먼저 removeFirst, removeLast를 시도했는데, 가능하다.
 효율성테스트, 어떤 연유인지 알 수 없으나 실패가 뜬다. 왜일까??
 혹시 문자열 앞뒤에 공백이 있지 않았을까? 공백을 삭제해보자.
 공백이 문제가 아니다. 뭐를 놓치고 있을까?
 
 결국 "(", ")" 갯수가 동일해야 한다.
 닫히는 값이 0보다 크다는 것은 더 완전히 닫지 못했음을 뜻한다.
 결국 0보다 크다는 것은 갯수의 불일치를 의미한다.
 */
func solution(_ s:String) -> Bool{
    var ans:Bool = false
    var num = 0
    
    for item in s {
        if item == ")" {
            num += 1
        } else {
            num -= 1
        }
        if num > 0 {
            break
        }
    }
    
    return num == 0 ? true : false
}

//func solution(_ s:String) -> Bool{
//    var ans:Bool = false
//    var firstCalculate = s.trimmingCharacters(in: .whitespacesAndNewlines)
//    var lastCalculate = s.trimmingCharacters(in: .whitespacesAndNewlines)
//    var firstElement = firstCalculate.removeFirst()
//    var lastElement = lastCalculate.removeLast()
//
//    if s.count % 2 == 0 {
//        ans = true
//        if firstElement == "(" && lastElement == ")" {
//            firstCalculate.
//            ans = true
//        } else {
//            ans = false
//        }
//    } else {
//        ans = false
//    }
//    return ans
//}
