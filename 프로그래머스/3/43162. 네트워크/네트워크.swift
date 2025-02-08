import Foundation

func solution(_ n: Int, _ computers: [[Int]]) -> Int {
    var visited = Array(repeating: false, count: n)
    var count = 0
    
    func dfs(_ node: Int) {
        visited[node] = true
        for neighbor in 0..<n {
            if computers[node][neighbor] == 1 && !visited[neighbor] {
                dfs(neighbor) // 재귀적으로 탐색
            }
        }
    }
    
    for i in 0..<n {
        if !visited[i] { // 방문하지 않은 노드(새로운 네트워크 발견)
            count += 1
            dfs(i) // DFS 탐색 시작
        }
    }
    
    return count
}