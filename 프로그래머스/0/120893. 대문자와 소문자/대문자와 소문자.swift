import Foundation

func solution(_ my_string:String) -> String {
    var str = ""
    for i in my_string {
        if i.isUppercase { str += i.lowercased() }
        else { str += i.uppercased() }
    }
    return str

}