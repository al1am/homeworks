import UIKit

// 1
let age = 40
switch age {
case 0...5:
    print("U're so cute kid <3")
case 6...15:
    print("It's you childhood (the best time)")
case 16...20:
    print("lern smth u can do all what u want")
case 21...40:
    print("U already a millioner")
default:
    break
}
// 2
func sum (array: [Int]) -> Int {
    var result = 0
    for item in array {
        result += item
        }

return result
}
print("sum")
let result = sum(array: [2,3,5,6])
print(result)
//3
func randomArray (size: Int) -> [Int]{
    var array = [Int]()
    for _ in 0 ..< size {
        let value = Int.random(in: 0...100)
        array.append (value)
    }
    return array
}
print (randomArray(size: 6))
//4
func notNegativeArray (array: [Int]) -> [Int]{
    var newArray = array
    for i in 0..<newArray.count{
        if newArray[i] < 0{
            newArray[i] = 0
        }
    }

    return newArray
}
print(notNegativeArray(array: [1,4,-5,-8,2]))
// 5
func subArray (array: [Int]) -> [Int]{
    var newArray = [Int]()
    for item in array {
        if item >= 0{
            newArray.append(item)
        } else {
            break
        }
    }
    return newArray
}
print (subArray (array: [1,2,-2,0,5,7]))
// 6
func decreasingOrderedArray (array: [Int]) -> [Int]{
    var newArray = array
    for i in 0..<newArray.count {
      for j in 1..<newArray.count {
          if newArray[j] > newArray[j-1] {
          let tmp = newArray[j-1]
            newArray[j-1] = newArray[j]
            newArray[j] = tmp
        }
      }
    }
    return newArray

}
let sorted = decreasingOrderedArray(array: [0,3,5,8,2,1,-1,-4])
print(sorted)
// 7
func mathSqr (number: Int){
    let numberX2 = number
    while number > 0{
        print("numbersqr = \(numberX2 * numberX2)")
        break
    }
    while number == 0 {
        print("numbersqr = 0")
        break
    }
    while number < 0 {
        print("numbersqr = \(numberX2 * numberX2)")
        break
    }
}
print (mathSqr(number: -5))
// 8
func fibonacciNumbers(count: Int) -> [Int] {
    if count <= 0 {
        return []
    }

    if count == 1 {
        return [0]
    }

    var result = [0, 1]
    var i = 2
    while i < count {
        let value = result[i - 1] + result[i - 2]
        result.append(value)
        i += 1
    }
    return result
}
print(fibonacciNumbers(count: 10))
// 9
func fruitAmount (amount: Int){
  let newAmount = amount % 10
  let secondAmount = amount % 100
    switch secondAmount {
    case 11...14:
        print("\(amount) груш")
        return ()
    default:
        break
    }
        switch newAmount{
        case 1:
            print("\(amount) груша")
        case 0..<1 , 5...9 :
            print("\(amount) груш")
        case 2...4:
            print("\(amount) груши")
        default:
            break
    }
    
        
}
print(fruitAmount(amount: 122))
// 10

func isPrime (number: Int) -> Bool {
    var prime = Bool()
    for i in 2..<number {
        if number % i == 0{
            prime = false
            break
        } else {
            prime = true
            break
        }
    }
    return prime
}
print ("Is number prime? \(isPrime(number: 1231))")
