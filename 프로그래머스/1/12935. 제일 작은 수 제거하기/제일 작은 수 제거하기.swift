func solution(_ arr:[Int]) -> [Int] {
    if arr.count == 1 {
        return [-1]
    } else {
        var arr = arr
        var minNum = arr.sorted()[0]
    
        arr.remove(at: arr.firstIndex(of: minNum)!)
    
        return arr
    }
}