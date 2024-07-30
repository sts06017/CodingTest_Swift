import Foundation

let count = Int(readLine()!)!
var numbers: [Int] = []

while numbers.count < count {
    numbers.append(Int(readLine()!)!)
}

let maxNum = numbers.max()!
var heap: [Int] = Array(repeating: 0, count: maxNum + 1)

if maxNum >= 1 { heap[1] = 1 } // 1 -> 1
if maxNum >= 2 { heap[2] = 2 } // 2 -> 11, 2
if maxNum >= 3 { heap[3] = 4 } // 3 -> 111, 12, 21, 3

for i in numbers {
    
    if i > 3 && heap[i] == 0 {
        for j in 4...i {
            heap[j] = heap[j-1] + heap[j-2] + heap[j-3]
        }
    }
    
    print(heap[i])
}