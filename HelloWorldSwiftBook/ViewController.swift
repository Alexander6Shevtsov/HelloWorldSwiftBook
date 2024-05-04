//
//  ViewController.swift
//  HelloWorldSwiftBook
//
//  Created by Alexander Shevtsov on 08.03.2024.
//

import UIKit
// финалим класс т.к. он последний, название нужно менять
final class ViewController: UIViewController {
    // сначала определяем все свойства класса
    // ! в конце "эту var нужно иниц до обращения", этот var опциональный
    @IBOutlet var greetingLabel: UILabel! // явное название var "приветствие"
    @IBOutlet var showGreetingButton: UIButton! // создаём оутлет для кнопки, чтоб менять параметры во viewDidLoad
    
    // метод унаследован от супер класса UIViewController
    // настройка интерфейса до того как его увидит пользователь
    override func viewDidLoad() {
        super.viewDidLoad() // обращаемся к род классу и вызываем у него метод
        // .isHidden скрывает объект, .toggle переворачивает true/false
        greetingLabel.isHidden.toggle() // скрываем приветствие
        showGreetingButton.layer.cornerRadius = 10 // скругление кнопки через .layer (слой)
    }
    // потом определяем методы
    // (_ sender: UIButton) убрали параметры метода т.к есть свойство (13)
    @IBAction func showGreetingButtonDidTapped() {
        greetingLabel.isHidden.toggle() // в лейбле меняем .isHidden на противополжный
        showGreetingButton.setTitle(
            greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting",
            for: .normal
        )
        
        /* юзаем тернарный вместо if else
        // логика отображения кнопки, если приветствие есть и отсутствует
        if greetingLabel.isHidden { // = true не пишем, оно по умолчанию
            sender.setTitle("Show Greeting", for: .normal) // .setTitle заголовок кнопки(на какой поменять, при каком состоянии)
        } else {
            sender.setTitle("Hide Greeting", for: .normal)
        }
        */
        
    }
}
