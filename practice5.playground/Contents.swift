import UIKit
import Darwin
//1 Найти минимальный и максимальный элемент в массиве.
//Написать функцию boundaryValues. Параметры: array: [Int]. Возвращает опциональный tuple из 2х именованных значений (min, max). Возвращает nil если массив не содержит элементов
func boundaryValues(_ array: [Int])-> (min: Int, max: Int)? {
    guard !array.isEmpty else{return nil}
    let tempValue = array[0]
    var min = array[0]
    var max = array[0]
    for i in 0..<array.count{
        if array[i] < tempValue{
            min = array[i]
        }else{
            max = array[i]
        }
    }
    return (min, max)
}
print(boundaryValues([5,3,2,7,1,0]))
//2 Создать функцию, которая вычисляет диагональное произведение значений в 2х кортежах.
//Функция принимает 2 параметра: кортежи из 2х значений типа (Int, Double). Возвращает кортеж (Double, Double).
//Алгоритм вычисления результата:
//Исходные данные (параметры функции):
//(a: Int, b: Double)
//(c: Int, d: Double)
//Результат: (a * d, b * c)
func diagonalMultiplication(a:(Int,Double),c:(Int,Double)) -> (Double,Double){
    let result = (Double(a.0) * c.1, a.1 * Double(c.0))
    return result
}
print(diagonalMultiplication(a: (11,12.111), c: (22,13.111)))
//3 Написать функцию square, принимающую 1 параметр — сторону квадрата, и возвращающую 3 значения (исп. кортеж): периметр квадрата, площадь квадрата и диагональ квадрата.
func square (_ side:Int = 5) -> (P: Int, S: Int, D: Int){
    let answers: (P: Int, S: Int, D: Int)
    answers.P = (side * 4)
    answers.S = (side * side)
    answers.D = (side * Int(sqrt(2)))
    return answers
}
print(square())
//4Создать 2 множества чисел. Вычислить пересечение, объединение и разность первого из второго.
//Пример: a = [1, 3, 5, 7, 9], b = [2, 3, 4, 5]
//пересечение - [3, 5]
//объединение - [1, 2, 3, 4, 5, 7, 9]
//разность - [1, 7, 9]
let a: Set<Int> = [1,3,5,7,9]
let b: Set<Int> = [2,3,4,5]
print(a.intersection(b))
print(a.union(b))
print(a.symmetricDifference(b))
//5 Пользователь делает вклад в размере amount гривен сроком на years лет под 10% годовых (каждый год размер его вклада увеличивается на 10%. Эти деньги прибавляются к сумме вклада, и на них в следующем году тоже будут проценты, т.е. сложный процент).
//Написать функцию calculateFinalAmount. Принимающие параметры: amount (использовать внешнее имя параметра initialAmount, а внутреннее amount) и years. Возвращающее значение: сумма, которая будет на счету пользователя.
//первый вариант
func calcuateFinalAmount (initialAmount amount:Int, years: Int ) -> Int {
    var amount1 = amount
    var procent = amount / 100 * 10
    var sum = amount1 + procent
    for i in 1...years {
        print("\(i)й год: 10% от \(amount1) = \(procent) --> \(sum)")
        amount1 += procent
        procent = amount1 / 100 * 10
        sum = amount1 + procent
    }
    return sum - procent
}

print(calcuateFinalAmount(initialAmount: 10000, years: 3))
//второй вариант БОЛЕЕ ПРАВИЛНЫЙ
func calcuateFinalAmount2 (initialAmount amount:Int, years: Int ) -> Int {
   var result = Double(amount)
    for i in 1...years {
        result *= 1.1
    }
    
    return Int(result)
}

print(calcuateFinalAmount2(initialAmount: 10000, years: 3))
