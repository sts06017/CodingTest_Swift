import Foundation

func solution(_ distance:Int, _ rocks:[Int], _ n:Int) -> Int {
    var sortedRocks = rocks.sorted()
    sortedRocks.append(distance)
    
    // 바위의 위치 rocks 배열을 순회하면서 각 바위사이의 거리가 midDistance보다 작으면 제거되야하는 바위이므로 remove+1
    // 크거나 같다면 허용되는 바위이므로 다음 바위로 이동.
    // 제거된 바위의 개수가 n을 넘어가면 mid값을 줄이고 다시 순회시작.
    // remove가 n을 넘지않고 작거나 같다면 total에 현재 mid값을 넣고 더 큰 mid값으로 순회시작
    
    var minDistance = 1
    var maxDistance = distance
    var total = 0
    
    while minDistance <= maxDistance {
        var midDistance = (minDistance + maxDistance) / 2
        var removeCount = 0
        var current = 0
        
        for rock in sortedRocks {
            let curDistance = rock - current
            
            if curDistance < midDistance {
                removeCount += 1
            } else {
                current = rock
            }
        }
        
        if removeCount > n {
            maxDistance = midDistance - 1
        } else {
            total = midDistance
            minDistance = midDistance + 1
        }
    }
    
    return total

}