import Foundation

let input1 = readLine()!.split(separator: " ").map{ Int(String($0))! }
let N = input1[0]
let L = input1[1]
let R = input1[2]

var arr = Array(repeating: Array(repeating: 0, count: N), count: N)
for i in 0..<N {
    let input2 = readLine()!.split(separator: " ").map{ Int(String($0))! }
    for j in 0..<N {
        arr[i][j] = input2[j]
    }
}

var union = Array(repeating: Array(repeating: 0, count: N), count: N)

let dx = [1,0,-1,0]
let dy = [0,1,0,-1]
var queue: [(Int, Int)] = []
var visited = Array(repeating: Array(repeating: false, count: N), count: N)
var nations: [(Int, Int)] = []
var isUnion = true
var day = 0
var cnt = 1

func divide(sum: Int) {
    let avg = sum / nations.count
    for n in nations {
        arr[n.0][n.1] = avg
    }
}

while true {
    for i in 0..<N {
        for j in 0..<N {
            var nation: [(Int, Int)] = []
            var sum = 0
            
            if !visited[i][j] {
                queue.append((i, j))
                visited[i][j] = true
            }
            
            while !queue.isEmpty {
                let q = queue.removeFirst()
                nation.append((q.0, q.1))
                sum += arr[q.0][q.1]
                
                for k in 0..<4 {
                    let x = q.1 + dx[k]
                    let y = q.0 + dy[k]
                    
                    if x < 0 || y < 0 || x >= N || y >= N {
                        continue
                    }
                    
                    if abs(arr[q.0][q.1] - arr[y][x]) >= L && abs(arr[q.0][q.1] - arr[y][x]) <= R && !visited[y][x] {
                        visited[y][x] = true
                        queue.append((y, x))
                    }
                }
            }
            if nation.count > 1 {
                nations = nation
                divide(sum: sum)
            } else {
                sum = 0
            }
        }
    }
    
    if nations.isEmpty {
        break
    }

    visited = Array(repeating: Array(repeating: false, count: N), count: N)
    nations = []
    day += 1
}
print(day)