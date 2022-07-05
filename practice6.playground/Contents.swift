import UIKit
//1 Создать класс Worker, который будет иметь следующие свойства: имя, фамилия, rate (ставка за день работы), days (количество отработанных дней). Также класс должен иметь метод printSalary, который будет выводить зарплату работника. Зарплата - это произведение ставки на количество отработанных дней.
class Worker {
    let name: String
    let surname: String
    let rate: Int
    let days: Int
    init (name: String, surname: String, rate: Int, days: Int ) {
        self.name = name
        self.surname = surname
        self.rate = rate
        self.days = days
    }
    func printSalary() {
        print ("\(days * rate)")
    }
}
let worker = Worker(name: "Ben", surname: "Harley", rate: 100, days: 20)
print(worker.printSalary())

//2 2 Создать класс Specialist. Поля: имя, фамилию и квалификацию специалиста (число).
//Создать конструктор, который принимает три параметра – имя, фамилию и квалификацию специалиста. Квалификация имеет значение заданное по умолчанию, равное единице.
//Добавить метод info, который выводит строку, включающую в себя всю информацию о сотруднике.
//Добавить деструктор, который выводит на экран фразу "До свидания, мистер FULLNAME” (должно выводиться имя и фамилия).
class Specialist {
    let name: String
    let surname: String
    let qualification: Int
    init (name: String, surname: String, qualification: Int) {
        self.name = name
        self.surname = surname
        self.qualification = 1
    }
    func info() {
        print("name: \(name), surname: \(surname), qualification: \(qualification)")
    }
    deinit{
        print( "До свидания, мистер \(name) \(surname) ")
    }
}
func specialist(){
    let specialist = Specialist(name: "daniil", surname: "ivanenko", qualification: 1)
    print(specialist.info())
}
specialist()
//3 Создать класс Student c полями firstName: String, lastName: String, age: Int, course: Int, isMale: Bool.
//Добавить метод info(), который выводит полную информацию о студенте.
//Добавить вычисляемое свойство fullName, которое возвращает форматированное имя и фамилию.
//Добавить константное свойство “типа” maxCourse: Int = 6
//Создать инициализатор со всеми параметрами. В инициализаторе выполнять проверку курса, если он меньше 1, присваивать 1; если больше maxCourse - присваивать maxCourse
class Student {
    let firstName: String
    let lastName: String
    let age: Int
    var course: Int
    let isMale: Bool
   
    func info() {
        print("\(firstName), \(lastName), \(age), \(course), \(isMale)")
        
    }
    var fullName: String {
            firstName + " " + lastName
        }
    
    let maxCourse = 6
    init (firstName: String, lastName: String, age: Int, course: Int, isMale: Bool) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.course = course
        self.isMale = isMale
    if course < 1 {
        self.course = 1
    } else if course > maxCourse {
        self.course = maxCourse
    }
    }
       

}
let student = Student(firstName: "daniil", lastName: "ivanenko", age: 15, course: 2, isMale: true)
print(student.fullName)
print(student.info())
//4 Создать класс Pupil. Должен содержать имя, фамилию и массив строк(каждая строка - название определенного изученного знания. Например, “ООП”, “английский язык” и т.д.)
//Добавить метод изучения нового предмета:
//func learn(_ knowledge: String).
//Добавить метод вывода на экран всех текущих знаний ученика: printAllKnowledge()
//Добавить метод забывания случайного знания ученика (“забывает” случайный элемент в списке своих знаний): forgetSomething()
class Pupil {
    let name: String
    let surname: String
    var knowLedge: [String]
    init (name: String, surname: String, knowLedge: [String]) {
        self.name = name
        self.surname = surname
        self.knowLedge = knowLedge
    }
    func learn(_ knowledge: String) {
        knowLedge.append(knowledge)
    }
    func printAllKnowledge() {
        print (knowLedge)
    }
    func forgetSomething(){
            guard let element: String = knowLedge.randomElement(),
                  let index: Int = knowLedge.firstIndex(of: element)
            else { return }
            knowLedge.remove(at: index)
        }

}
let pupil = Pupil(name: "daniil", surname: "ivanenko", knowLedge: ["OOP", "english", "math", "streaming"])
print (pupil.knowLedge)
print (pupil.printAllKnowledge())
print(pupil.forgetSomething())
print(pupil.learn("cs"))
print(pupil.printAllKnowledge())
//5 Создать класс Circle. Свойства: radius: Int
//Вычисляемое свойство - диаметр.
//Добавить 2 convenience инициализатора:
//- Принимает 1 параметр - площадь круга
//- Принимает 1 параметр - длина окружности
class Circle{
    var radius: Int
    var S: Int
    var D: Int
    init(radius: Int, S: Int, D: Int){
        self.radius = radius
        self.S = S
        self.D = D
    }
    convenience init(){
        self.init(radius: 10, S: 5, D: 3 )
    }
    func diametr(){
        print("Диаметр = \(S / D)")
    }
}

let c = Circle.init(radius: 10, S: 3, D: 2)
print(c.diametr())

