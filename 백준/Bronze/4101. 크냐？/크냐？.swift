while true {
    let arr = readLine()!.split(separator: " ").map{ Int(String($0))! }

    if arr[0] > arr[1] {
        print("Yes")
    } else if arr[0] == 0 && arr[1] == 0 {
        break
    } else {
        print("No")
    }
}
