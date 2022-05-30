import UIKit
//№1
func nameCheck (name: String) -> Void {
    if name == "Ben"{
        print("Hello my friend!!!")
    } else{
        print("Hi, \(name)")
    }
}
print(nameCheck(name: "John"))
//№2
func securityHouse (isDoorOpen: Bool,isWindowOpen: Bool) -> Void {
    if isDoorOpen == true && isWindowOpen == true{
        print("House is protected ")
    } else {
        print("House isn't protected")
    }
}
print(securityHouse(isDoorOpen: false, isWindowOpen: false))
//№3
func printOddValue (x: Int) -> Void {
    if x % 2 == 0 {
        print("Value = \(x)")
    }else {
        print("\(x) is odd")
    }
}
print(printOddValue(x: 5))
//№4
func powDouble(x: Double) -> Double {
    return x * x * x
}
let result = powDouble(x: 4)
print(result)
//№5
func lastDigit (value: Int){
    let last = value % 10
    print("\(value) -> \(last)")
}
print(lastDigit(value: 21345))
//№6
func appendRandomValue (array: [Int]) -> [Int]{
    var newArray = array
    let randomNumber = Int.random(in: 0..<50)
    newArray.append(randomNumber)
    return newArray
}
print(appendRandomValue(array: [1,3,-4,8,]))
//№7
func zeroingSpecificItems(array: [Double]) -> [Double]{
    if array.isEmpty {
        return array
    }
    var newArray = array
    
    newArray[0] = 0
    newArray[newArray.count - 1] = 0
    
    if newArray.count % 2 != 0 {
        newArray[newArray.count / 2] = 0
    }
return newArray
}
print (zeroingSpecificItems(array: [1,2,3,4,5,6]))
