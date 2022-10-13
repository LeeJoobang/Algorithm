import Foundation

/*
 두 정수 A와 B를 입력받은 다음, A+B를 출력하는 프로그램을 작성하시오.

 첫째 줄에 테스트 케이스의 개수 T가 주어진다.
 각 테스트 케이스는 한 줄로 이루어져 있으며, 각 줄에 A와 B가 주어진다. (0 < A, B < 10)
 */

var count = Int(readLine()!)!
var text = [Int]()

for _ in 0..<count{
    text = (readLine()!.split(separator: " ")).map({Int($0)!})
    print(text[0] + text[1])
    
}

// xcode 내에서 정상적으로 동작하나 백준에서 'error: value of type 'String' has no member 'components''의 컴파일 에러를 출력함
/*
var count = Int(readLine()!)!
var text = readLine()!

var arr = text.components(separatedBy: " ").map({Int($0)!})

for i in 0..<count{
    var a = arr.removeFirst()
    var b = arr.removeFirst()
    print(a + b)
}
*/
