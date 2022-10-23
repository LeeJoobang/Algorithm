import Foundation

/*
 약수구하기
 */

func solution(_ n:Int) -> Int {
    var numbers = [Int]()
    guard n > 0 else { return 0 }
    for i in 1...n{
        if n % i == 0 {
            numbers.append(i)
        }
    }
    var result = numbers.reduce(0){ $0+$1 }
    return result
}
