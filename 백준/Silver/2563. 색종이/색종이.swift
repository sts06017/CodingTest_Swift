//MARK: - 색종이
var arr: [[Bool]] = Array(repeating: Array(repeating: false, count: 100), count: 100)

let N = Int(readLine()!)!

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    
    for y in input[1]..<input[1]+10 {
        for x in input[0]..<input[0]+10 {
            if !arr[y][x] {
                arr[y][x] = true
            }
        }
    }
}

print(arr.map{ $0.filter{ $0 }.count }.reduce(0, +))