import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var sizes = sizes
    var maxHeight = 0
    var maxWidth = 0
    
    for index in sizes.indices {
        sizes[index].sort(by: >)
    }
    
    for size in sizes {
        if maxWidth < size[0] {
            maxWidth = size[0]
        }
        if maxHeight < size[1] {
            maxHeight = size[1]
        }
    }
    
    return maxHeight * maxWidth
}