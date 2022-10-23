import Foundation
// 자릿수 더하기
func solution(_ n:Int) -> Int{
    var answer:Int = 0
    
    let arrNumber = String(n).map { $0 }
    for i in arrNumber{
        answer += Int(String(i))!
    }
    return answer
}

print(solution(123))
print(solution(987))
