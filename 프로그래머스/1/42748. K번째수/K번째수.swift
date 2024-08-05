import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result: [Int] = commands.map{
        let arr = array[$0[0]-1...$0[1]-1].sorted()
        return arr[$0[2]-1]
    }
    return result
}