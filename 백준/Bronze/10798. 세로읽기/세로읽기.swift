//MARK: - 세로읽기
import Foundation

var arr: [[String]] = []

for _ in 0..<5 {
    let input = readLine()!.map{ String($0) }
    arr.append(input)
}
let maxLength: Int = arr.map{ $0.count }.max()!

var result: [String] = []

for x in 0..<maxLength {
    for y in 0..<5 {
        if arr[y].count <= x {
            continue
        }
        result.append(arr[y][x])
    }
}

print(result.joined())
