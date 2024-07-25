import Foundation

var input1 = readLine()!.split(separator: " ").map{ Int($0)! }
var gong: [Int] = []    // 집 좌표 배열

for _ in 0..<input1[0] {
    gong.append(Int(readLine()!)!)
}

gong = gong.sorted()

var minDistance = 1
var maxDistance = gong.max()!
var result = 0

while minDistance <= maxDistance {
    let midDistance = (minDistance + maxDistance)/2
    var canDisplay = 1
    var current = gong[0]
    
    // 설치된 공유기들 중에서 가장 가까운 두 공유기 사이의 거리의 최대값 구하기.
    
    /// 집 좌표 배열을 하나씩 순회하면서 현재 위치와 이전 위치 사이의 거리를 구한다.
    /// 두 거리가 mid값 보다 작으면 공유기 설치 x -> 이전 위치는 그대로, 현재위치를 다음 집 좌표로 이동.
    /// 두 거리가 mid값 보다 크거나 같으면 공유기 설치 o -> 이전 위치를 현재위치로 갱신하고, 다음 순회로 이동.
    /// 설치 한 공유기의 개수가 문제에서 제시한 C보다 작을경우 -> max = mid - 1
    /// C보다 크거나 같을경우 -> min = mid + 1
    
    var testArr: Set<Int> = []
    
    for i in 1...gong.count-1 {
        let nowDistance = gong[i] - current
        
        if nowDistance < midDistance {
            continue
        } else {
            canDisplay += 1
            current = gong[i]
            testArr.insert(current)
            testArr.insert(gong[i])
        }
    }
    
    if canDisplay >= input1[1] {
        result = max(midDistance, result)
        minDistance = midDistance + 1
    } else {
        maxDistance = midDistance - 1
    }
}

print(result)
