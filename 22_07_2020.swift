//1. Типы 

//Создание переменных и констант
//Область памяти
//var —переменная, значение можно менять 
//let — константа, значение задается единожды, доступ после присвоения значения

var variableName: Type let variableName: Type

//Объявление типа
//Явное объявление типа 

var variableName: Type =
let constantName: Type = 

//Неявное объявление типа

var variableName = value 
let constantName = value



//Строгая типизация в Swift

var variableName: Type = value
variableName = otherTypeValue // error 
var x, y, z: Float

//Вложенные типы

//Внутри классов и структур объявлять собственные типы.
//Можно объявить переменную или константу внутреннего типа, без создания инстанса внешнего типа.
//Для доступа к вложенным типам используется дот нотация.

class OuterClass { class InnerClass {
} }
let a: OuterClass.InnerClass
 
//Именование констант и переменных
//Можно использовать Unicode символы в том числе эмодзи.
//Нельзя начинать именование с цифр,не должны содержать управляющие символы,пробельные символы, математические символы, стрелки,
//а также приватные юникод символы.
//Хорошие переменные 
let isPrivate = true
let availableColors: [UIColor]

//Плохие переменные
let π = 3.14159

  
//Целочисленные значения

//Int, Int8, Int16, Int32, Int64 — знаковые
//UInt, UInt8, UInt16, UInt32, UInt64 — беззнаковые

//Int и UInt будут использовать 32 или 64 длину в зависимости от платформы.

//Int и UInt предпочтительнее.
 
//Значения с плавающей точкой

//Float — 32-разрядные значения
//с плавающей точкой, минимум 6 знаков после точки
//Double — 64-разрядные значения
//с плавающей точкой, минимум 15 знаков после точки

//Booleans

//Ключевое слово Bool true или false
//В отличие от C или Objective-C
//логическое false не является эквивалентом 0, а любое другое значение — эквивалентом true
//Некорректное использование
let i = 1
if i {// will not compile with error }
 
//Tuple (Кортеж)

var coordinate = (x: 0.0, y: 0.0, z: 0.0)
let http404Error = (404, "Not Found")

//В кортеже можно группировать разные типы.
var someTuple = (code: 404, description:"Not Found")

//Теперь можно не указывать именапри обращении 
someTuple = (200, "Ok")
 
//Optional

//Optional используется в тех случаях, когда
//у переменной может отсутствовать значение
//Конвертируем строку в число 
let correct = Int("123")
let incorrect = Int("Hello World!")

//Конструктор возвращает Optional<Int> или Int?
//Int? равен Int или nil
 
nil
//nil — обозначает отсутствующее значение для переменной.
//nil нельзя присвоить обычной переменной, только Optional<Type> тип может принимать значение nil.
 
//Использование if с nil

var x: Int?

//Затрудняет чтение и небезопасно.
if x != nil {
  return x! + 5 }
//Лучше if let — эквивалентно проверке с присвоением значения.
if let nonOptionalX = x {
  return nonOptionalX + 5 }
 

 
 
 
 
 
 
 
//2. Операторы

//Большая часть операторов — стандартные операторы языка С.
 
//Унарный
-variable; !variable
 
//Бинарный
variable + variable
 
//Тернарный
boolValue ? value1 : value2

 
//Оператор присвоения (=)
 
//Для объявления или обновления значения
let b = 10
var a = 5
a=b
let (x, y) = (1, 2)
 
//В отличие от C, подобный код приведет к ошибке
let x = 1 if x = 5 {
}
 
//Арифметические операторы
 
//Бинарные операторы 
let a = 5
let b = 3 
var c = 0 c=a+b c=a/b
 
//Унарные операторы 
c = -a
 
//Конкатенация строк
let helloWorld = "Hello" + "world!"
 
//Составные операторы присваивания
var a = 1
a += 2 

//Также используются 
a -= 2
a *= 2 
a /= 2
 
//Операторы сравнения
 
//Все основные С операторы сравнения (==, <, >). 
//Операторы эквивалентности (=== и !==) возвращают Bool.
//Для кортежей до 7 элементов
(1, "zebra") < (2, "apple")
(4, "dog") == (4, "dog")
//Типы и количество элементов должны совпадать.
 
//Тернарный условный оператор
question ? answer1 : answer2
 
if question { answer1
} else {
answer2
}
 
Nil-coalescing оператор

//Для работы с optional значениями. Бинарный оператор ( ?? ).
 
var a: Int?
let b: Int = 5 
var c: Int = 0
c = (a ?? b)
if a != nil { c = a!
} 
else {
c=b }
 
//Операторы диапазона
 
//Сокращенная форма для представления ряда значений.
//Поддерживается только тип Int.
//Обязательно a < b.
//Восходящий диапазон от a до b (a...b).
//Для нисходящего диапазона используем функцию reversed() (a...b).reversed().
 

//Три типа: закрытые, полуоткрытые и односторонние.
//Закрытый диапазон (a...b) включает оба значения 1...5
//Полуоткрытый (a..<b)
//в отличие от закрытого, b не входит. 1..<5
 
//Операторы диапазона (односторонний диапазон)
//От минимально возможного значения, до значения указанного  (...a)
//От значения указанного до максимально возможного значения (а...)
//Обычно применяется для работы с массивами
 
let letters = ["a", "b", "c", "d", "e"] 
for letter in letters[2...] {
    print(letter) // c, d, e
}
for letter in letters[...2] {
    print(letter) // a, b, c 
}
 
//Операторы диапазона (без ограничений)
//Исключительные ситуации
let rangeLeft = ...5
for index in rangeLeft {
    print(index)
} // Приведет к ошибке
 
let rangeRight = 5...
for index in rangeRight {
    print(index)
} // Правая граница равна
//максимальному значению Int
 
//Логические операторы
//Стандартная реализация операторов

//Логическое НЕ (!a)
//Логическое И (a && b)
//Логическое ИЛИ (a || b)
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 //3. Работа со строками и символами
 
//Создание строки
let immutableGreeting = "Hello everyone!" 
var mutableGreeting = "Hello everyone!" 
let emptyString = ""
 
//Многострочный текст
let multiLine = """ This
is
string
"""
  
//Escape последовательности
\\ - обратный слэш
\” - двойная кавычка
\n - перенос строки
\u{00000000} - unicode символ
 print("\u{1F40E}") // выводит "🐎"
  
//String — это коллекция
for char in "Кот" {
    print(char) }

 let catCharacters: [Character] = ["К", "о", "т"]
 let catString = String(catCharacters)
 
//Конкатенация строк
let exclamation: Character = "!"
var cat: String = "Кот"
var result: String = "" 
cat.append(exclamation) // Кот! 
result = cat + " " + cat // Кот! Кот! 
result += " " + cat // Кот! Кот! Кот!
 
//Unicode
U+8439 = “й” 
U+1F40E = 🐎 
"\u{0435}" // е
"\u{0308}" // точки для буквы ё
let yoLetter = "\u{0435}\u{0308}" // ё
  
//Сложение символов
let r = "\u{1F1F7}" // " R " : String 
let u = "\u{1F1FA}" // " U " : String
let ruFlag = r + u // " " : String ruFlag.count // 1
let ruFlagCharacter: Character = ruFlag.first! // " "
 
//Работа со строками как с коллекцией
var word = "Какое-то слово!"
 
print(word[word.startIndex]) // К
 
print(word[word.index(word.startIndex, offsetBy: 3)]) // о
 
word.remove(at: word.startIndex) print(word) // какое-то слово!
 
word.insert("К", at: word.startIndex) print(word) // Какое-то слово!
 
//SubString
  
//Создание строки из SubString
let string = "Hello word!"
let subString = string.suffix(5)
let stringFromSubString = String(subString)
 
//Сравнение строк
var firstWord = "белье" 
firstWord += "\u{0308}" 
let secondWord = "бельё"
if firstWord == secondWord { 
   print("Строки равны")
} // Строки равны
 
let run = "прибежать" 
let prefix = "при"
let suffix = "ать"
if run.hasPrefix(prefix) && run.hasSuffix(suffix) {
 print("Начинается на \"при\", заканчивается на \"ать\"")
} // Начинается на "при", оканчивается на "ать"
 
 
 
 
 
 
 
 
 
 

 
 
 

 
 
//4. Поток приложения (Flow control)
 
//Выражения для управления
//Управление осуществляется с помощью следующих выражений
 
//Операторы ветвления
if
guard 
switch
 
//Циклы
for in 
while
 
//Выражениями для передачи контроля
continue
break
fallthrough 
return
throw //будет рассматриваться отдельно
 
//Циклы For-In (коллекции)

//for in для доступа к элементам коллекций
 
//Массивы и Множества — получаем отдельный элемент коллекции
let digits = [1, 2, 3] 
for element in digits {
    print(element)
} //1 //2 //3
 
Словари — получаем кортеж вида (Ключ, Значение)
let keyValues = ["One" : 1, "Two" : 2, "Three" : 3]
for element in keyValues {
    print(element)
} 
// (key: "One", value: 1) // (key: "Three", value: 3) // (key: "Two", value: 2)
 
//Циклы For-In (использование диапазонов)
//Диапазоны для создания циклов с определенным количеством итераций.
let array = [1, 2, 3, 4, 5]
for index in 1...3 {
    print(array[index])
}// 2 // 3 // 4
  
//Циклы While и Repeat-While
//Цикл выполняется пока условие не примет значение false
var value = 0
while (value < 10) { 
    value += 1
    print(value)
}

var value = 0
repeat { value += 1
    print(value)
} while (value < 10)

  
//Операторы ветвления
//Предназначены для выполнения частей кода в зависимости от условий.
if 
switch 
guard
 
//Операторы ветвления (if - else if - else)

let x = 50
if x == 1 { 
   print("One")
}
else if x == 2 { 
   print("Two")
} 
else if x < 10 && x >= 0 { 
   print("X где-то от 0 до 10")
} else {
   print("X больше 10")
} // X больше 10
 
//Операторы ветвления (Switch)
let char = "C"
switch char { 
 case "A":
    print("похоже на A") 
case "B":
    print("похоже на B") 
default:
    print("Ни A, ни B") 
}
 
//Операторы ветвления (Switch интервалы)
//Интервалы можно подставлять в case. 
let value = 6
switch value { 
case 0...5:
    print("Значение от 0 до 5") 
case 6...10:
    print("Значение от 6 до 10") 
default:
    print("Не входит в проверяемые
диапазоны") 
}
 
//Операторы ветвления (Switch tuples)
//Использование кортежей в switch case 
let coordinate = (0, 1)
switch coordinate { 
case (0, 0):
    print("Начало координат") 
case (_, 0):
    print("Лежит на оси Y") 
case (0, -10...10):
    print("На оси X в диапазоне от -10 до 10") 
default:
    print("Где-то рядом") 
}
 
//Операторы ветвления (Switch составные условия)
//Для выполнения case для нескольких условий используется запятая
let value = 8 
switch value { 
case 0:
    print(0)
case 1, 3, 5, 7, 9:
    print("Нечетное в диапазонеот 0 до 10") 
case 2, 4, 6, 8, 10:
    print("Четное в диапазонеот 0 до 10") 
default:
    print("Не входит в диапазон от 0 до 10") 
}
 
Guard
//Выражение guard предназначено для раннего выхода из скоупа
var value: Int?
guard let x = value else { 
    print("Значение x равняется nil")
    return
}
print ("Значение x = \(x)")
 
//Выражения для передачи контроля
 
//Операторы изменяющие порядок выполнения кода
continue 
break
fallthrough 
return
throw
 
//Передача управления (continue)
//Останавливает выполнение итерации и запускает выполнение следующей
let numbers=[1,3,4,5,6,8,9]
for number in numbers { 
    if (number == 4) {
        print("Четыре на 2 умножать не будем") } 
        continue
}
    print(number * 2) 
}
 
//Передача управления (break)
 let numbers=[1,3,4,5,6,8,9]
for number in numbers { 
    if (number == 4) {
        print("Снова 4, пора прекращатьс умножением") } 
        break
    }
   print(number * 2) 
}
 

Break предназначен для ранней остановки выполнения кода внутри switch или операторов цикла
let color: UIColor = .white
switch color { 
case .red:
    print("Красный") 
case .blue:
    print("Синий") 
case .green:
    print("Зеленый") 
default:
    break
}

 
//Передача управления (fallthrough)
//В Swift, при выполнении условия в выражении switch, происходит прекращение выполнения кода в выражении.
var value = 4
var value = 4
switch value { 
case 1...5:
    value = value * 2
    fallthrough
// падаем в следующий case
case 6...10:
    value = value + 1
default:
    value = value * 0
} 
print(value) // value = 0
 
//Передача управления (return)

func sum(_ lhs: Int, _ rhs: Int ) -> Int {
    return lhs + rhs 
}
 









