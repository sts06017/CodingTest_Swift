let input = Int(readLine()!)!
let label = "WelcomeToSMUPC".map{ String($0) }

print(label[((input - 1) % 14)])