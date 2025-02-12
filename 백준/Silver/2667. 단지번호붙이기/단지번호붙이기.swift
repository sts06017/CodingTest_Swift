let nums = Int(readLine()!)!
var arr: [[Int]] = []

for _ in 0..<nums {
    let str = readLine()!
    var tmp: [Int] = []
    for i in str {
        tmp.append(Int(String(i))!)
    }
    arr.append(tmp)
}

var visited = Array(repeating: Array(repeating: false, count: nums), count: nums)
var queue: [(Int, Int)] = []
let dx = [1,0,-1,0]
let dy = [0,1,0,-1]
var danji: [Int] = []

for i in 0..<nums {
    for j in 0..<nums {
        if arr[i][j] == 1 && !visited[i][j] {
            queue.append((i, j))
            visited[i][j] = true
        }
        
        var cnt = 0
        
        while !queue.isEmpty {
            let q = queue.removeFirst()
            cnt += 1
            
            for k in 0..<4 {
                let x = q.1 + dx[k]
                let y = q.0 + dy[k]
                
                if x >= nums || x < 0 || y >= nums || y < 0 {
                    continue
                }
                
                if arr[y][x] == 1 && !visited[y][x] {
                    queue.append((y, x))
                    visited[y][x] = true
                }
            }
        }
        if cnt > 0 {
            danji.append(cnt)
        }
    }
}

print(danji.count)
for i in danji.sorted(by: <) {
    print(i)
}
