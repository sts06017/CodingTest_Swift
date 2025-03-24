let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let (N, K) = (input[0], input[1])
var arr = Array(1...N)
var result: [Int] = []
var index: Int = 0
while arr.count > 0 {
    index = (index + K - 1) % arr.count
    let a = arr.remove(at: index)
    result.append(a)
}
print("<", terminator: "")
for (index, i) in result.enumerated() {
    if index == result.count - 1 {
        print(i, terminator: ">")
    } else {
        print(i, terminator: ", ")
    }
}