import Foundation

func solution(_ bridge_length: Int, _ weight: Int, _ truck_weights: [Int]) -> Int {
    var time = 0
    var queue = Array(repeating: 0, count: bridge_length)
    var totalWeight = 0
    var truckIndex = 0
    
    while truckIndex < truck_weights.count || totalWeight > 0 {
        time += 1
        totalWeight -= queue.removeFirst()
        
        if truckIndex < truck_weights.count { // 다음 트럭이 있을때
            let nextTruck = truck_weights[truckIndex] // 다음 트럭의 무게
            if totalWeight + nextTruck <= weight {  // 다음 트럭이 올라와도 무게가 넘지 안을때
                queue.append(nextTruck) // 다음트럭이 올라감
                totalWeight += nextTruck
                truckIndex += 1
            } else {    // 무게가 넘는다면
                queue.append(0)
            }
        }
    }
    
    return time
}