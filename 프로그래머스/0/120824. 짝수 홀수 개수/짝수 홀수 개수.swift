import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var sol = [0,0]
    sol[0] = num_list.filter{ $0 % 2 == 0 }.count
    sol[1] = num_list.filter{ $0 % 2 == 1 }.count
    return sol
}