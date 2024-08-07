import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var dic = Dictionary(uniqueKeysWithValues: zip(name, yearning))
    return photo.map{ $0.filter{ dic.keys.contains($0) }.map{ dic[$0]! }.reduce(0, +) }
}