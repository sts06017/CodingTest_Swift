import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var maxW = 0, maxH = 0
    var sizes = sizes
    // 모든 명함들을 가로로 눕히거나 세로로 세워서 그때의 최대최소를 구한다면?
    
    for (index, i) in sizes.enumerated() {
        if i[0] < i[1] {
            sizes[index] = (i.reversed())
        }
    }
    
    for i in sizes {
        if i[0] >= maxW {
            maxW = i[0]
        }
        
        if i[1] >= maxH {
            maxH = i[1]
        }
    }
    return maxW * maxH
}