import Foundation

let first = readLine()!.split(separator: " ").map{ Int(String($0))! }
let (N, M) = (first[0], first[1])
var arr: [String] = []

for i in 0..<N {
    let num = readLine()!
    arr.append(num)
}

let K = Int(readLine()!)!
var patternCount: [String:Int] = [:]

for i in 0..<N {
    let row = arr[i]
    let zeros = row.filter{ $0 == "0" }.count
    
    if (zeros <= K) && (K % 2 == zeros % 2) {
        if patternCount[row] != nil {
            patternCount[row]! += 1
        } else {
            patternCount[row] = 1
        }
    }
}

var result = 0
for (_, value) in patternCount {
    result = max(result, value)
}
print(result)
