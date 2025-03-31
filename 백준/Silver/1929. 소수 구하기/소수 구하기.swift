import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let M = input[0], N = input[1]

var answer: [Int] = []

func isPrime(_ n: Int, _ m: Int) -> [Int] {
    var result: [Int] = []
    for i in n...m {
        let sqrt = sqrt(Double(i))
        var isPrime = true
        if i == 3 || i == 2 {
            result.append(i)
        }
        if sqrt < 2 {
            continue
        }
        for num in 2...Int(sqrt) {
            if i % num == 0 {
                isPrime = false
                break
            }
        }
        if isPrime {
            result.append(i)
        }
    }
    return result
}
answer = isPrime(M, N)
for i in answer {
    print(i)
}