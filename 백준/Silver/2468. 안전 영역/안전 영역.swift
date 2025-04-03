//MARK: - 안전 영역 (백준)
import Foundation

let input = Int(readLine()!)!
var arr: [[Int]] = []
for i in 0..<input {
    let line = readLine()!.split(separator: " ").map(\.description).compactMap(Int.init)
    arr.append(line)
}
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: input), count: input)
let dx: [Int] = [1, 0, -1, 0]
let dy: [Int] = [0, 1, 0, -1]
var queue: [(Int, Int)] = []
var maxCount = 0

func bfs(height: Int, y: Int, x: Int) {
    visited[y][x] = true
    queue.append((y, x))
    
    while !queue.isEmpty {
        let q = queue.removeFirst()
        for i in 0..<4 {
            let nx = q.1 + dx[i]
            let ny = q.0 + dy[i]
            
            if nx < 0 || ny < 0 || nx >= input || ny >= input || visited[ny][nx] {
                continue
            }
            
            if arr[ny][nx] > height {
                queue.append((ny, nx))
                visited[ny][nx] = true
            }
        }
    }
}

for h in 0..<100{
    var count = 0
    for i in 0..<input {
        for j in 0..<input {
            if arr[i][j] > h && !visited[i][j] {
                bfs(height: h, y: i, x: j)
                count += 1
            }
        }
    }
    maxCount = max(count, maxCount)
    visited = Array(repeating: Array(repeating: false, count: input), count: input)
}

print(maxCount)