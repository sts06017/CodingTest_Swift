import Foundation

func solution(_ ingredient: [Int]) -> Int {
    var ingredient = ingredient
    var count = 0
    
    var i = 0
    while i <= ingredient.count - 4 {
        if ingredient[i...i+3] == [1, 2, 3, 1] {
            ingredient.removeSubrange(i...i+3)
            count += 1
            i = max(i - 3, 0) // 햄버거를 만들고 나면 다시 확인하기 위해 인덱스를 조정합니다.
        } else {
            i += 1
        }
    }
    
    return count
}