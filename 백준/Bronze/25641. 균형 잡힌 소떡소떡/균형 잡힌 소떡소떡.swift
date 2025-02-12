let num = Int(readLine()!)!
var input = readLine()!
var st = input.map{String($0)}
while true {
    if st.filter{ $0 == "s" }.count == st.filter{ $0 == "t" }.count {
        break
    }
    
    st.removeFirst()
}

print(st.joined())