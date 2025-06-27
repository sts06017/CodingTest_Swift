//MARK: - 공 넣기 (백준)
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (N, M) = (input[0], input[1])

var result: [String] = Array(repeating: "0", count: N+1)

for _ in 0..<M {
    let input2 = readLine()!.split(separator: " ").map{Int(String($0))!}
    let (start, end) = (input2[0], input2[1])
    
    for i in start...end {
        result[i] = String(input2[2])
    }
}

result = result[1...].map{String($0)}
print(result.joined(separator: " "))