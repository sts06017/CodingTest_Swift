import Foundation

func solution(_ ineq:String, _ eq:String, _ n:Int, _ m:Int) -> Int {
    let arr = [n, m]
    
    switch (ineq, eq) {
    case ("<","="):
        return arr[0] <= arr[1] ? 1 : 0 
    case (">","="):
        return arr[0] >= arr[1] ? 1 : 0
    case ("<","!"):
        return arr[0] < arr[1] ? 1 : 0
    case (">","!"):
        return arr[0] > arr[1] ? 1 : 0
    default:
        return -1
    }
}