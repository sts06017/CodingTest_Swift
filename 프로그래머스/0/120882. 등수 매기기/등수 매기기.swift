import Foundation

func solution(_ score:[[Int]]) -> [Int] {
    var sums = score.map{ $0.reduce(0, +) }.sorted(by: >)
    print(sums)
    return score.map{ sums.firstIndex(of: $0.reduce(0, +))! + 1 }
}