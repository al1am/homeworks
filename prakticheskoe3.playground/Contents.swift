import UIKit

//1) Создать функцию, которая принимает в качестве параметра возраст человека и выводит описание его жизненного этапа (вкл. фантазию). Использовать оператор switch.
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
//2) Вычислить сумму элементов массива
//Создать функцию sum. Параметры: array: [Int]. Возвращаемое значение: сумма элементов массива.
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

//3) Сгенерировать массив случайных чисел.
//Создать функцию randomArray. Параметры: size: Int - количество элементов. Возвращает массив элементов типа Int.
func randomArray (size: Int) -> [Int]{
    var array = [Int]()
    for _ in 0 ..< size {
        let value = Int.random(in: 0...100)
        array.append (value)
    }
    return array
}
print (randomArray(size: 6))
//4) Заменить в массиве отрицательные числа нулем.
//Создать функцию notNegativeArray. Параметры: array: [Int]. Возвращает новый массив с неотрицательными элементами.
//Пример: [4, 1, 2, -4, 0, -1] ->[4, 1, 2, 0, 0, 0]
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
//5) Создать новый массив, который содержит все элементы исходного, до первого отрицательного значения.
//Создать функцию subArray. Параметры: array: [Int]. Возвращает новый массив.
//Пример1: [4, 1, 2, -4, 0, -1] -> [4, 1, 2]
//Пример2: [-4, 6, 2, 1] -> []
//Пример3: [4, 6, 2, 1] -> [4, 6, 2, 1]
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
//6) Отсортировать массив по убыванию.
//Создать функцию decreasingOrderedArray. Параметры: array: [Int]. Возвращает новый массив.
//Пример: [4, 1, 2, -4, 0, -1] -> [4, 2, 1, 0, -1, -4]

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
//7) Вычислить степень числа 2.
//Создать функцию, которая выводит в консоль результат возведения числа 2 в степень, передаваемую как параметр. Возвращаемого значения нет. (использовать while).
//Проверить значения степени > 0, = 0, < 0.
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
//8) Создать функцию fibonacciNumbers. Параметры: count: Int - количество чисел. Возвращаемое значение - массив чисел Фибоначчи. (Числа Фибоначчи - последовательность чисел, каждый следующий элемент которой, равен сумме предыдущих 2х элементов.)
//Последовательность: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ...

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
//9) Вывести на экран сообщение о количестве груш в правильной форме. Количество передается как параметр. Написать функцию fruitAmount. Параметры: amount: Int. Возвращаемого значения нет. Выводит на экран сообщение о количестве груш. Использовать switch.
//Пример, “1 груша”, “11 груш”, “3 груши”, “121 груша”, "300 груш" и тд.
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
//10) Создать функцию isPrime. Параметры: number: Int. Возвращаемое значение Bool. Функцию проверяет, является ли число простым. (Простое число - число, которое делится только на себя и на 1).


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





//
//
//Повышенной сложности:
//

//
