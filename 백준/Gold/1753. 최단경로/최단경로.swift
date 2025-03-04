import Foundation

struct MinHeap {
    var heap: [(Int, Int)] = [] // (비용, 노드)
    
    var isEmpty: Bool {
        return heap.isEmpty
    }
    
    mutating func push(_ node: Int, _ cost: Int) {
        heap.append((cost, node))
        var index = heap.count - 1
        while index > 0 && heap[index].0 < heap[(index - 1) / 2].0 {
            heap.swapAt(index, (index - 1) / 2)
            index = (index - 1) / 2
        }
    }
    
    mutating func pop() -> (Int, Int)? {
        if heap.isEmpty { return nil }
        if heap.count == 1 { return heap.removeFirst() }
        
        let min = heap[0]
        heap[0] = heap.removeLast()
        var index = 0
        
        while index * 2 + 1 < heap.count {
            var child = index * 2 + 1
            if child + 1 < heap.count && heap[child].0 > heap[child + 1].0 {
                child += 1
            }
            if heap[index].0 < heap[child].0 { break }
            heap.swapAt(index, child)
            index = child
        }
        
        return min
    }
}

let num = readLine()!.split(separator: " ").map { Int(String($0))! }
let (V, E) = (num[0], num[1])
let start = Int(readLine()!)!

var graph = [[(Int, Int)]](repeating: [], count: V + 1)
for _ in 0..<E {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let (u, v, w) = (input[0], input[1], input[2])
    graph[u].append((v, w))
}

func dijkstra(_ V: Int, _ start: Int, _ graph: [[(Int, Int)]]) -> [Int] {
    let INF = Int.max
    var dist = [Int](repeating: INF, count: V + 1)
    dist[start] = 0
    var pq = MinHeap()
    pq.push(start, 0)

    while !pq.isEmpty {
        let (cost, node) = pq.pop()!
        if cost > dist[node] { continue }

        for (next, weight) in graph[node] {
            let newCost = cost + weight
            if newCost < dist[next] {
                dist[next] = newCost
                pq.push(next, newCost)
            }
        }
    }
    
    return dist
}

let dist = dijkstra(V, start, graph)

for i in 1...V {
    if dist[i] == Int.max {
        print("INF")
    } else {
        print(dist[i])
    }
}