import Foundation

func solution(_ n:Int, _ edge:[[Int]]) -> Int {
    var graph = Array(repeating: [Int](), count: n+1)
    for i in edge {
        graph[i[0]].append(i[1])
        graph[i[1]].append(i[0])
    }
    var queue = [1]
    var visited = Array(repeating: false, count: n+1)
    var distance = Array(repeating: 0, count: n+1)
    visited[1] = true
    
    while !queue.isEmpty {
        let q = queue.removeFirst()
        for g in graph[q] {
            if visited[g] { continue }
            distance[g] = distance[q] + 1
            queue.append(g)
            visited[g] = true
        }
    }
    
    let maxDist = distance.max() ?? 0
    
    return distance.filter{ $0 == maxDist }.count
}