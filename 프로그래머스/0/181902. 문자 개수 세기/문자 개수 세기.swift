import Foundation

func solution(_ my_string:String) -> [Int] {
    var result:[Int] = []
    let A = UnicodeScalar("A").value
    let Z = UnicodeScalar("Z").value
    let a = UnicodeScalar("a").value
    let z = UnicodeScalar("z").value
    var index = 0
    
    for i in A...Z {
        if my_string.contains(Character(UnicodeScalar(i)!)) {
            result.append(my_string.filter{ String($0).contains(Character(UnicodeScalar(i)!)) }.count)
        } else {
            result.append(0)
        }
    }
    
    for i in a...z {
        if my_string.contains(Character(UnicodeScalar(i)!)) {
            result.append(my_string.filter{ String($0).contains(Character(UnicodeScalar(i)!)) }.count)
        } else {
            result.append(0)
        }
    }
    return result
}