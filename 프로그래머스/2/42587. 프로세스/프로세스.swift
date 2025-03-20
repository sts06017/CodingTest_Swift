import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var priorities = priorities
    var temp = priorities.sorted(by: >)
    var start = priorities.firstIndex(of: temp.removeFirst())!
    var count = 1
 
    while(true) {
        if start == location {
            return count
        } 
        
        let nextPriority = temp.removeFirst()
        
        for i in 1..<priorities.count {
            let index = (i + start) % priorities.count
            if priorities[index] == nextPriority {
                start = index
                count += 1
                break
            }
        }        
    }
    
    return 0
}