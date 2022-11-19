//
//  main.swift
//  Unknown Number
//
//  Created by Pavel Michka on 19.11.2022.
//
import Foundation
//Случайное число

func game() {
    print("Компьютер случайным образом загадал число. Вам требуется отгадать его.")
    let randomNumber = UInt8.random(in: 1...250)
    //флаг указатель на победу
    var isWin = false
    print("Введите вариант числа от 1 до 250 и нажмите Enter")
    repeat {
        //попытка преобразования введеного значения к UInt8
        guard let userNumber = UInt8(readLine() ?? "") else {
            print("Вы ввели некорректное число. Попробуйте снова")
            continue
        }
        //Проверка введенного числа
        if userNumber < randomNumber {
            print("Ваш вариант меньше заданного числа")
        } else if userNumber > randomNumber {
            print("Ваш вариант больше загадачнного числа")
        } else {
            print("Поздравляем! Вы угадали!")
            isWin = true
        }
    } while !isWin

    while true {
        print("Хотите поиграть еще? Введите 'Да' или 'Нет'")
        let userContinue = readLine()
        if userContinue == "Да" || userContinue == "да" {
            game()
        } else if userContinue == "Нет" || userContinue == "нет" {
            break
        } else {
            print("Неверный ввод, введите 'Да' или 'Нет'")
        }
    }
}
game()
