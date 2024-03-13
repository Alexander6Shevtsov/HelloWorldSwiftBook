//
//  ViewController.swift
//  HelloWorldSwiftBook
//
//  Created by Alexander Shevtsov on 08.03.2024.
//

import UIKit
// финалим класс т.к он последний, название нужно сменить
final class ViewController: UIViewController {
    // ! в конце, эту var нужно иниц до обращения
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var showGreetingButton: UIButton!
    
    
    // метод унаследован от супер класса UIViewController
    override func viewDidLoad() {
        super.viewDidLoad() // обращаемся к род классу и вызываем у него метод
        greetingLabel.isHidden.toggle() // скрываем приветствие
        showGreetingButton.layer.cornerRadius = 10 // скругление кнопки
    }
    // (_ sender: UIButton) убрали параметрs метода т.к есть свойство (13)
    @IBAction func showGreetingButtonDidTapped() {
        greetingLabel.isHidden.toggle()
        showGreetingButton.setTitle(
            greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting",
            for: .normal
        )

 /* юзаем тернарный вместо if else
        if greetingLabel.isHidden {
            sender.setTitle("Show Greeting", for: .normal)
        } else {
            sender.setTitle("Hide Greeting", for: .normal)
       }
 */
        
    }
    
}
