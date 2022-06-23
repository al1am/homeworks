import UIKit
//1 Создать переменную x: Int и опциональную переменную z: Int?. Вычислить result = x + z, если z существует, в противном случае - result = 2 * x. (использовать optional binding)
var x: Int = 10
var z: Int?
if let zIsReal = z {
    print("x = \(x) z = \(zIsReal) -> result = \(x + zIsReal)")
}else {
    print("x = \(x) z = \(z) -> result = \(x * 2)")
}
//2 Создать опциональную строку optionalName. Присвоить новой переменной name значение из optionalName, если оно есть, в противном случае использовать стандартное значение “Unknown”. Вывести на экран "Hello, " + name.
var optionalName: String? = "daniil"
if let name = optionalName{
    print("hello, \(name)")
}else{
    print("Unknow")
}
//3 Создать словарь: дни в месяцах, где месяц это ключ, а количество дней - значение. В цикле выведите ключ-значение попарно.
var monthAve = ["January" : 31, "February" : 28, "March" : 31, "April" : 30, "May" : 31, "June": 30, "July" : 31, "August" : 31, "September" : 30, "October" : 31, "November" : 30, "December" : 31]
for i in monthAve {
    print("\(i.key) - \(i.value)")
}
//4Найти минимальный элемент в массиве.
//Написать функцию minValue. Параметры: array: [Int]. Возвращает минимальное значение в массиве или nil, если массив не содержит элементов.
func minValue (array: [Int] ) -> Int? {
    if array.isEmpty{
        return nil
    }
    var min: Int = array[0]
    for i in 0..<array.count{
        if array[i] < min {
            min = array[i]
        }
    }
    
 return min
}
print(minValue(array: [5,1,24,0,4]))

//5 Написать функцию numbersFrequency. Параметры: numbers: [Int] - массив чисел. Возвращает сформированный словарь частот.
//Функция формирует словарь частоты символов, где ключом является символ, а значением - количество появлений этого символа.
//Возвращаемое значение функции присвоить переменной и вывести в консоль
func numbersFrequency(numbers:[Int]) -> [Int : Int] {
    var dict: [Int:Int] = [:]
    for item in numbers{
        let value = dict[item] ?? 0
        dict[item] = value + 1
    }
    print(dict)
    return dict
}
numbersFrequency(numbers: [1,1,1,1,1])

//6 Найти индекс любого элемента массива, состоящего из строк.
//Написать функцию itemIndex. Параметры: array: [String], item: String. Возвращает индекс найденного элемента или nil в противном случае.
func itemIndex (array: [String], item: String)-> Int?{
    guard !array.isEmpty else {return nil}
    for i in 0..<array.count{
        if array[i] == item {
            return i
        }
    }
    return nil
}
let testArray = ["Test", "Beta", "Alpha", "Alex", "John"]
print(itemIndex(array: testArray , item: "Alex"))
