import Foundation


var arr: [Int] = []
for _ in 0..<9 {
    arr.append(Int(readLine()!)!)
}

var result: (value: Int, index: Int) = (0, 0)

for (index, value) in arr.enumerated() {
    if result.value < value {
        result = (value, index)
    }
}

print(result.value)
print(result.index + 1)