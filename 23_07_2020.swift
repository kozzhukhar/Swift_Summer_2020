//
//  main.swift
//  FirstCourseFirstTask
//
//  Copyright © 2017 E-Legion. All rights reserved.
//

// Импортируем необходимые модули
import Foundation
import FirstCourseFirstTaskChecker


// Создаем экземпляр класса Checker для вызова проверок
let checker = Checker()


// Для получения первой части кодового слова вам нужно реализовать простую функцию. Она
// не принимает никаких параметров и просто возвращает строку "Hello, world!" (без кавычек).
func firstFunction() -> String {
    return "Hello, world!"
}
// Передача функции на проверку
checker.checkFirstFunction(function: firstFunction)


// Для получения следующей части кодового слова вам нужно реализовать функцию, принимающую
// на вход два целых числа в виде строки и возвращающую результат их сложения в виде Int.
// Для конвертации строки в число воспользуйтесь инициализатором Int(String)! Восклицательный знак
// используется только потому, что мы знаем, что Checker не будет передавать некорректную строку и
// преобразование в Int всегда завершится успешно. В реальных проектах такой код использовать не
// следует. Более подробная информация об Optionals представлена в одноименной лекции.

func secondFunction(lhs: String, rhs: String) -> Int {
    let tmp = Int(lhs)!
    let tmp2 = Int(rhs)!
    return tmp + tmp2
}

// Передача второй функции на проверку
checker.checkSecondFunction(function: secondFunction)


// Для получения последней части кодового слова вам нужно реализовать еще одну функцию.
// Чтобы узнать требования к ней нажмите левой кнопкой мыши на метод checkThirdFunction с
// зажатой клавишей cmd и переместитесь к его определению. Для преобразования данных в строку
// можно воспользоваться инициализатором String(describing: Any). Эта инициализация всегда
// заканчивается успешно. Поэтому не нужно использовать восклицательный знак.
// Передайте в этот метод функцию, принимающую валюту в виде Currency и целочисленную сумму.
// Возвращать она должна строку, содержащую сумму и символ валюты. Обратите внимание, что
// отрицательные числа нужно отображать в скобках и без минуса. Если ваше решение окажется
// правильным, то в консоли вы увидите еще одну часть кодового слова.
//
// Например:
// .rub, 100 -> "100 ₽";
// .eur, 0 -> "0 €";
// .usd, -100 -> "(100) $";

func thirdFunction(_ currency: Checker.Currency, _ amount: Int) -> String {
    
    var moneySign : String

    switch currency {

    case .eur:

    moneySign = "€"

    case .rub:

    moneySign = "₽"

    case .usd:

    moneySign = "$"

    
    }
    let tmp = amount >= 0 ? String(amount) : "(" + String(abs(amount)) + ")"
    return tmp + " " + moneySign
    
}

print(thirdFunction(.eur, -100))

// Передача третьей функции на проверку
checker.checkThirdFunction(function: thirdFunction)

