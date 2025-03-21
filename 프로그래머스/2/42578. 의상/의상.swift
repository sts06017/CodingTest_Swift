import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var clothesByCategory: [String:[String]] = [:]
    
    for cloth in clothes {
        let name = cloth[0]
        let category = cloth[1]
        clothesByCategory[category, default: []].append(name)
    }
    
    let combinations = clothesByCategory.values.map { $0.count + 1 }
    
    return combinations.reduce(1,*) - 1
}