let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
var (N, M) = (input[0], input[1])
var visited: [Bool] = Array(repeating: false, count: N+1)

func backTrack(_ arr: [Int]){
    if arr.count == M {
        print(arr.map(String.init).joined(separator: " "))
        return
    }
    for i in 1...N {
        if !visited[i] {
            visited[i] = true
            backTrack(arr + [i])
            visited[i] = false
        }
    }
}

backTrack([])