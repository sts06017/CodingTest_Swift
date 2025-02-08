import Foundation

var input = readLine()!.split(separator: " ").map{Int($0)}
var (length, width) = (input[0]!, input[1]!)
var picture: [[Int]] = []
for i in 0..<length {
    var tmp = readLine()!.split(separator: " ").map{Int($0)!}
    picture.append(tmp)
}

var queue: [(x: Int, y: Int)] = []
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: width), count: length)
var cnt = 0
var biggestArea = 0

let dx = [1,0,-1,0]
let dy = [0,1,0,-1]

func bfs(x: Int, y: Int) -> Int {
    var queue = [(x, y)]
    visited[x][y] = true
    var size = 1
    
    while !queue.isEmpty {
        let (curX, curY) = queue.removeFirst()
        for i in 0...3 {
            let nx = curX + dx[i]
            let ny = curY + dy[i]
            
            if nx >= length || nx < 0 || ny >= width || ny < 0 {
                continue
            }

            if picture[nx][ny] == 1 && !visited[nx][ny] {
                visited[nx][ny] = true
                queue.append((nx, ny))
                size += 1
            }
        }
    }
    
    return size
}

for i in 0..<length {
    for j in 0..<width {
        if picture[i][j] == 1 && !visited[i][j] {
            let pictureArea = bfs(x: i, y: j)
            biggestArea = max(biggestArea, pictureArea)
            cnt += 1
        }
    }
}

print(cnt)
print(biggestArea)
