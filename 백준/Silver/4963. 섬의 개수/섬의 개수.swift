//MARK: - 섬의 개수 (백준)
import Foundation

var isInput = true
var result: [Int] = []
let dx = [1, 1, 0, -1, -1, -1, 0, 1]
let dy = [0, 1, 1, 1, 0, -1, -1, -1]

while isInput {
    let input = readLine()!.split(separator: " ").map{String($0)}.compactMap(Int.init)
    if input[0] == 0 && input[1] == 0 {
        isInput = false
        break
    }
    var arr: [[Int]] = []
    for _ in 0..<input[1] {
        let line = readLine()!.split(separator: " ").map{String($0)}.compactMap(Int.init)
        arr.append(line)
    }
    var visited = Array(repeating: Array(repeating: false, count: arr[0].count), count: arr.count)
    var count = 0
    for i in 0..<arr.count {
        for j in 0..<arr[0].count {
            if arr[i][j] == 1, !visited[i][j] {
                visited[i][j] = true
                count += 1
                dfs(x: j, y: i, arr: arr, visited: &visited)
            }
        }
    }
    result.append(count)
}

for i in result {
    print(i)
}

func dfs(x: Int, y: Int, arr: [[Int]], visited: inout [[Bool]]) {
    for i in 0..<8 {
        let nx = x + dx[i]
        let ny = y + dy[i]
        if nx >= 0, ny >= 0, nx < arr[0].count, ny < arr.count, arr[ny][nx] == 1, !visited[ny][nx] {
            visited[ny][nx] = true
            dfs(x: nx, y: ny, arr: arr, visited: &visited)
        }
    }
}