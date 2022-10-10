import Foundation

/*
 n이 주어졌을 때, 1부터 n까지 합을 구하는 프로그램을 작성하시오.
 첫째 줄에 n (1 ≤ n ≤ 10,000)이 주어진다.
 1부터 n까지 합을 출력한다.
 */
let number = Int(readLine()!)!

var sum = 0

for index in 0...number {
    sum += index
}
print(sum)

/*
 빈 값을 하나 만든뒤 순차적으로 값을 더해주었음.
 */
