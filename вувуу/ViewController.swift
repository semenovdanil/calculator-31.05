//
//  ViewController.swift
//  вувуу
//
//  Created by Гость on 06.04.2022.
//
/Users/Guest/Desktop/calculator-main/вувуу/
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var buttonAC: UIButton!
    @IBOutlet weak var buttonZero: UIButton!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var buttonChangeResultLabel:
        UIStepper
    @IBOutlet weak var buttons: UIStackView!
    
    var numberOne = ""
    var numverTwo = ""
    var operand = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonAC.layer.cornerRadius = 35
        
        
   
    }

    
    @IBOutlet func inputNumber(_ sender: UIButton) {
        
        if operand.isEmpty {
            numberOne = numberOne +
                (sender.titleLabel?.text)!
            resultLabel.text = numberOne
        }
        else
        {
            numverTwo = numverTwo +
                (sender.titleLabel?.text)!
            resultLabel.text = numverTwo
        }
    }
    
    @IBOutlet func inputOperand (_ sender: UIButtor) {
        operand = sender.titleLabel?.text as!
            String
    }
    
    @IBOutlet func resultAction(_ sender: UIButton) {
    
        var result = 0.0
        
        switch operand {
        case "/":
            result = Double (numberOne)! /
                Double(numverTwo)!
        case "+":
            result = Double (numberOne)! +
                Double(numverTwo)!
        case "-":
            result = Double (numberOne)! -
                Double(numverTwo)!
        case "*":
            result = Double (numberOne)! *
                Double(numverTwo)!
        default:
            break
        }
        if result.truncatingRemainder(dividingBy: 1.0)
            == 0.0 {
            resultLabel.text = String(Int(result))
        }
        else
        {
            resultLabel.text = String(result)
        }

        
    }
    @IBOutlet func changeResultLabel(_ sender: UIStepper) {
        let font = resultLabel.font?.fontName
        let fontSize = CGFloat(sender.value)
        
        resultLabel.font = UIFont(name: font!, size: fontSize)
        
    }
    
    @IBOutlet func hiddenButton(_ sender: Any) {
    //   resultLabel.isHidden = !resultLabel.isHidden
        buttons.isHidden = !buttons.isHidden =
        !buttonChangeResultLabel.isHidden
    }


