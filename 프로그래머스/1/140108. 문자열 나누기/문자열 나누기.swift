import Foundation

func solution(_ s:String) -> Int {
    // 왼쪽부터 오른쪽으로 첫문자와 같은문자,다른문자 갯수가 다르면 문자열 분리 후 갯수 초기화후 다시진행.
    var firstChar = s.first!
    var sameCount = 0
    var diffCount = 0
    var str = s
    
    var resultString: [String] = str.map{
        if sameCount == diffCount, sameCount == 0 {
            firstChar = $0
        }
        if $0 == firstChar {
            sameCount += 1
        } else {
            diffCount += 1
        }
        
        if sameCount == diffCount, sameCount > 0 {
            (sameCount, diffCount) = (0, 0)
            return "\($0) "
        }
        
        return "\($0)"
    }
    
    return resultString.joined().split(separator: " ").count

}