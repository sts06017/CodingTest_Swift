import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    var (left, right) = (50, 0)
    var (top, bottom) = (50, 0)
    var locations: [(Int,Int)] = []
    
    for (indexY, loc) in wallpaper.enumerated() {
        for (indexX, i) in loc.enumerated() {
            if i == "#" {
                locations.append((indexY, indexX))
            }
        }
    }
    
    for i in locations {
        if left > i.1 {
            left = i.1
        }
        
        if right < i.1 {
            right = i.1
        }
        
        if top > i.0 {
            top = i.0
        }
        
        if bottom < i.0 {
            bottom = i.0
        }
    }
    
    return [top, left, bottom+1, right+1]
}