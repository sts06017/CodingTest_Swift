func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    var runTime = 0
//    var cities = cities.map{ $0.lowercased() }
    var cacheStore: [String] = []       // 맨 오른쪽이 가장 참조값이 작은 값.
    
    for data in cities.map({ $0.lowercased() }) {
        if cacheStore.contains(data) { // 데이터가 있으면 재참조
            runTime += 1
            cacheStore.remove(at: cacheStore.firstIndex(of: data)!)  // 데이터를 삭제하고
            cacheStore.append(data)         // 다시 추가함.
        } else {
            runTime += 5
            if cacheStore.count == cacheSize, cacheSize > 0 { // 꽉차있으면?
                cacheStore.removeFirst()
            }
            
            if cacheSize > 0 {
                cacheStore.append(data)
            }
        }
    }
    
    return runTime
}