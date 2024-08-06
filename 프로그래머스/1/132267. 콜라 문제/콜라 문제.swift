import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    
    func colla(empty: Int) -> Int {
        var totalColla = 0
        var temp = 0
        
        if a > empty {
            return 0
        } else {
            var count = empty / a   // 마트에 몇번 교환 가능횟수
            var collaCount = count * b  // 현재 갖고있는 빈병으로 받을수 있는 콜라 수
            temp = 0
            totalColla += collaCount
            temp += empty - count * a

            totalColla += colla(empty: collaCount + temp)
        }
        return totalColla
    }
    
    return colla(empty: n)
}