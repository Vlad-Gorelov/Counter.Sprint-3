//
//  ViewController.swift
//  Сounter
//
//  Created by Владислав Горелов on 25.07.2022.
//

import UIKit

class ViewController: UIViewController {
    var counterTaps: Int = 0
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var counterAllView: UIView!
    @IBOutlet weak var plusButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counterAllView.layer.cornerRadius = 24
        counterLabel.text="0"
      
    }

    @IBAction func plusOne(_ sender: Any) {
        counterTaps += 1
        counterLabel.text = "\(counterTaps)"
    }
    
    @IBAction func clearButtonAction(_ sender: Any) {
        counterTaps = 0
        counterLabel.text = "\(counterTaps)"
    }
    
}

/* Текст UILabel меняется через свойство text. Оно строковое, поэтому просто сохраните в него нужную строку — и она отобразится.
 Изначальные тексты установите в сториборде. Для Label задайте поле text, а для кнопки Button — поле title.
 Вы можете экспериментировать с типом события у кнопки, но в рамках этого задания достаточно события Touch Up Inside. */

