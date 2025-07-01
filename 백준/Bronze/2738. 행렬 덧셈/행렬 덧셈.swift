//MARK: - 행렬 덧셈
let input = readLine()!.split(separator: " ").map{ Int($0)! }
var arr: [[Int]] = []
var result: [[Int]] = []

for _ in 0..<input[0] {
    let input2 = readLine()!.split(separator: " ").map{ Int($0)! }
    arr.append(input2)
}

for i in 0..<input[0] {
    let input3 = readLine()!.split(separator: " ").map{ Int($0)! }
    var temp: [Int] = []
    
    for (index, value) in input3.enumerated() {
        temp.append(arr[i][index] + value)
    }
    
    result.append(temp)
}

for array in result {
    print(array.map{String($0)}.joined(separator: " "))
}