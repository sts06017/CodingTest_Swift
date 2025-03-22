import Foundation

func solution(_ numbers:String) -> Int {
    var strNumbers = Array(numbers)
    var nums: Set<Int> = []
    
    for i in 1...strNumbers.count {
        let perms = permutations(strNumbers, i)
        for perm in perms {
            if let num = Int(String(perm)) {
                nums.insert(num)
            }
        }
    }
    
    let result = nums.filter{ isPrime($0) }.count
    return result
}

func permutations<T>(_ elements: [T], _ k : Int) -> [[T]] {
    if k == 0 { return [[]] }
    var result: [[T]] = []
    
    for (index, element) in elements.enumerated() {
        var rest = elements
        rest.remove(at: index)
        
        for perm in permutations(rest, k-1) {
            let new = [element] + perm
            result.append(new)
        }
    }
    
    return result
}

func isPrime(_ n: Int) -> Bool {
    if n < 2 { return false }
    if n == 2 { return true }
    if n % 2 == 0 { return false }
    var num = Int(Double(n).squareRoot()) + 1
    
    for i in 2...num {
        if n % i == 0 {
            return false
        }
    }
    
    return true
}