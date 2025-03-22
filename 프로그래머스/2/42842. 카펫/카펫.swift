import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    var height = 0
    var width = 0
    
    for bh in 3...brown/2 {
        let bw = (brown - (bh * 2)) / 2 + 2
        if bw < bh { break }
        let (yw, yh) = (bw - 2, bh - 2)
        if yw * yh == yellow {
            return [bw, bh]
        }
    }
    
    return []
}