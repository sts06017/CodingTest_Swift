import Foundation


func solution(_ lines:[[Int]]) -> Int {
    let a = sol(lines[0], lines[1])
    let b = sol(lines[0], lines[2])
    let c = sol(lines[1], lines[2])
        
    var union = Set(a).union(Set(b)).union(Set(c))
    let unionCount = union.count
    let first = union.sorted().first ?? 0
    let last = union.sorted().last ?? 0
    
    if first == 0, last == 0 {
      return 0  
    } else if unionCount != (first...last).count {
        return unionCount - 2
    } else {
        return unionCount - 1
    }
    
    return 0
}

// 정수배열 두개가 주어지면, 겹치는 구간을 구해서 배열을 반환하는 함수
func sol(_ a:[Int], _ b:[Int]) -> [Int] {
    // 두 배열을 집합으로 만들어서 교집합 연산으로 겹치는 구간 구하기
    let aSet = Set(a[0]...a[1])
    let bSet = Set(b[0]...b[1])
    
    let result = aSet.intersection(bSet).sorted()
    if result.count == 1 {
        return []
    }
    return result 
}