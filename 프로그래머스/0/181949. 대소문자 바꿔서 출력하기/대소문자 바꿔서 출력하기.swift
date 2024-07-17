import Foundation

let s1 = readLine()!

var mapTest = s1.map{ $0.isUppercase ? $0.lowercased() : $0.uppercased() }
print(mapTest.joined())