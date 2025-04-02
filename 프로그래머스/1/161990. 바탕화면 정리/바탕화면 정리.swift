import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    var minLeft = 51, minTop = 51, maxRight = 0, maxBottom = 0
    
    for (i, line) in wallpaper.enumerated() {
        for (j, char) in line.enumerated() {
            if char == "#" {
                minLeft = min(minLeft, j)
                minTop = min(minTop, i)
                maxRight = max(maxRight, j)
                maxBottom = max(maxBottom, i)
            }
        }
    }
    
    return [minTop, minLeft, maxBottom + 1, maxRight + 1]
}
