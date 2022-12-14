//
//  최댓값최솟값.swift
//  Algorithm
//
//  Created by Jooyoung Lee on 2022/12/14.
//

import Foundation

/*
 참조: https://babbab2.tistory.com/92
 문제 설명
 문자열 s에는 공백으로 구분된 숫자들이 저장되어 있습니다. str에 나타나는 숫자 중 최소값과 최대값을 찾아 이를 "(최소값) (최대값)"형태의 문자열을 반환하는 함수, solution을 완성하세요.
 예를들어 s가 "1 2 3 4"라면 "1 4"를 리턴하고, "-1 -2 -3 -4"라면 "-4 -1"을 리턴하면 됩니다.
 제한 조건
 s에는 둘 이상의 정수가 공백으로 구분되어 있습니다.
 
 생각 1. 띄어쓰기, 스트링 배열 변환
 생각 2. 스트링의 음수 비교 가능할까? String -> int map을 활용해 타입 변환 처리
 생각 3. 배열 정렬을 후 첫번째, 마지막 요소 적용
 */

func solution(_ s:String) -> String {
    let arr = s.components(separatedBy: " ").map(){ Int($0)!}
    var sortedArr = arr.sorted(by: <).map(){ String($0)}
    let result = sortedArr.removeFirst()+" "+sortedArr.removeLast()
    return result
}
