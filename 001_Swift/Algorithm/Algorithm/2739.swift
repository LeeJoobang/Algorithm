import Foundation


/*
 N을 입력받은 뒤, 구구단 N단을 출력하는 프로그램을 작성하시오. 출력 형식에 맞춰서 출력하면 된다.
 첫째 줄에 N이 주어진다. N은 1보다 크거나 같고, 9보다 작거나 같다
 출력형식과 같게 N*1부터 N*9까지 출력한다.
*/


let number = Int(readLine()!)!

for index in 1...9 {
    print("\(number) * \(index) = \(number*index)")
}

/*
 풀이
 for문을 이용해 1-9까지의 범위를 정해준 다음 반복적으로 입력 값을 적용해 해당 값이 출력된다.
 */
