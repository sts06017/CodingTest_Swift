import Foundation

func solution(_ tickets:[[String]]) -> [String] {
    var tickets = tickets
    var result: [[[String]]] = []
    
    func dfs(dataArr: [[String]], targetArr: [[String]]) -> Int {
        if tickets.count == targetArr.count {
            result.append(targetArr)
        }
        if dataArr.isEmpty {
            return 0
        }
        if !targetArr.isEmpty {
            if !dataArr.contains(where: { arr in
                arr[0] == targetArr.last![1]
            }) {
                return 0
            }
        }
        if targetArr.isEmpty {
            var firstTrip: [[String]] = dataArr.filter{ $0[0] == "ICN" }
            for trip in firstTrip {
                var dataArr = dataArr
                dataArr.remove(at: dataArr.firstIndex(of: trip)!)
                
                dfs(dataArr: dataArr, targetArr: [trip])
            }
        } else {
            var nextTrip: [[String]] = dataArr.filter{ $0[0] == targetArr.last![1] }
            for trip in nextTrip {
                var dataArr = dataArr
                dataArr.remove(at: dataArr.firstIndex(of: trip)!)
                var targetArr = targetArr
                targetArr.append(trip)
                dfs(dataArr: dataArr, targetArr: targetArr)
            }
        }
        
        return 0
    }
    dfs(dataArr: tickets, targetArr: [])

    var result3: [[String]] = []
    
    for arr in result {
        var v: [String] = []
        for (index,i) in arr.enumerated() {
            if index == arr.count-1 {
                v.append(i[0])
                v.append(i[1])
            } else {
                v.append(i[0])
            }
        }
        result3.append(v)
    }
    result3 = result3.sorted {
        for i in 1..<min($0.count, $1.count) { // 배열의 길이만큼 순차적으로 비교
            if $0[i] != $1[i] {
                return $0[i] < $1[i] // 서로 다른 값이 발견되면 그 값으로 비교
            }
        }
        return false // 모든 요소가 같으면 순서를 유지
    }
    return result3[0]
}