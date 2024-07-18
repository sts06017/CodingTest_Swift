import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    let gong = gcd(b, a)
    let giyak = [a/gong, b/gong]
    
    let 분모소인수 = 소인수분해(giyak[1]).subtracting(Set([2,5]))
    if 분모소인수.count > 0 {
        return 2
    } else {
        return 1
    }
}

func gcd(_ n1: Int, _ n2: Int) -> Int{
    if(n2 == 0) {return n1}
    else {return gcd(n2, n1 % n2)}
}

func 소인수분해(_ n:Int) -> Set<Int> {
    var index = 2
    var num = n
    var nums = [Int]()
    
    while(num != 1) {
        if  num % index == 0 {
            num = num / index
            nums.append(index)
            index = 2
        } else {
            index += 1
        }
    }
    
    return Set(nums)
}