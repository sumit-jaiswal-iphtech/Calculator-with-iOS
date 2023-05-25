//
//  ViewController.swift
//  Calculator
//
//  Created by iPHTech 29 on 19/05/23.
//

import UIKit

class CalculatorController: UIViewController {
    
    @IBOutlet weak var modeView: UIStackView!
    @IBOutlet weak var screenView: UIView!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var displayNumber: UILabel!
    @IBOutlet weak var calculatorResults: UILabel!
    @IBOutlet weak var reloadBtn: UIButton!
    @IBOutlet weak var nineBtn: UIButton!
    @IBOutlet weak var eightBtn: UIButton!
    @IBOutlet weak var sevenBtn: UIButton!
    @IBOutlet weak var sixBtn: UIButton!
    @IBOutlet weak var fiveBtn: UIButton!
    @IBOutlet weak var fourBtn: UIButton!
    @IBOutlet weak var threeBtn: UIButton!
    @IBOutlet weak var twoBtn: UIButton!
    @IBOutlet weak var oneBtn: UIButton!
    @IBOutlet weak var zeroBtn: UIButton!
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var dotBtn: UIButton!
    @IBOutlet weak var equalBtn: UIButton!
    @IBOutlet weak var plusBtn: UIButton!
    @IBOutlet weak var minusBtn: UIButton!
    @IBOutlet weak var multipleBtn: UIButton!
    @IBOutlet weak var divideBtn: UIButton!
    @IBOutlet weak var percentBtn: UIButton!
    @IBOutlet weak var clearBtn: UIButton!
    @IBOutlet weak var lightBtn: UIButton!
    @IBOutlet weak var darkBtn: UIButton!
    
    var presentDivide = false
    var findZero = false
    var operationTap = false
    var numberString:String = ""
    var numberDoubleValue:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        modeView.layer.shadowOpacity = 0.5
        modeView.layer.shadowOffset = .zero
        modeView.layer.shadowRadius = 10
        
        lightBtn.tintColor = .black
        equalBtn.layer.borderWidth = 0.5
        equalBtn.layer.borderColor = UIColor(red: 66.0/255.0, green: 218.0/255.0, blue: 186.0/255.0, alpha: 0.8).cgColor
        equalBtn.layer.cornerRadius = 10
        
        clearAll()
        lightMode()
        setLightmode ()
    }
    
    func clearAll()
    {
        numberString = ""
        numberDoubleValue = ""
        displayNumber.text = ""
        calculatorResults.text = ""
    }
    
    @IBAction func darkMode(_ sender: Any) {
        setBtnWhiteColor()
        setdarkmode ()
        modeView.backgroundColor = UIColor(red: 35.0/255.0, green: 38.0/255.0, blue: 46.0/255.0, alpha: 1.0)
        modeView.layer.borderWidth = 0.5
        modeView.layer.borderColor = UIColor.darkGray.cgColor
        screenView.backgroundColor = UIColor(red: 28.0/255.0, green: 31.0/255.0, blue: 39.0/255.0, alpha: 1.0)
        mainView.backgroundColor = UIColor(red: 35.0/255.0, green: 38.0/255.0, blue: 46.0/255.0, alpha: 0.5)
        displayNumber.textColor = .systemGray4
        calculatorResults.textColor = .white
        lightBtn.tintColor = .systemGray6
        darkBtn.tintColor = .systemMint
    }
    
    @IBAction func lightMode(_ sender: Any) {
        
        lightBtn.tintColor = .darkGray
        darkBtn.tintColor = .systemGray
        lightMode()
        setLightmode ()
    }
    
    
    func setdarkmode () {
        zeroBtn.setDarkView()
        oneBtn.setDarkView()
        twoBtn.setDarkView()
        threeBtn.setDarkView()
        fourBtn.setDarkView()
        fiveBtn.setDarkView()
        sixBtn.setDarkView()
        sevenBtn.setDarkView()
        eightBtn.setDarkView()
        nineBtn.setDarkView()
        dotBtn.setDarkView()
        reloadBtn.setDarkView()
        plusBtn.setDarkBorderView()
        minusBtn.setDarkBorderView()
        multipleBtn.setDarkBorderView()
        divideBtn.setDarkBorderView()
        percentBtn.setDarkBorderView()
        clearBtn.setDarkBorderView()
        backBtn.setDarkBorderView()
    }
    
    func setLightmode () {
        
        zeroBtn.setLightView()
        oneBtn.setLightView()
        twoBtn.setLightView()
        threeBtn.setLightView()
        fourBtn.setLightView()
        fiveBtn.setLightView()
        sixBtn.setLightView()
        sevenBtn.setLightView()
        eightBtn.setLightView()
        nineBtn.setLightView()
        dotBtn.setLightView()
        reloadBtn.setLightView()
        plusBtn.setLightBorderView()
        minusBtn.setLightBorderView()
        multipleBtn.setLightBorderView()
        divideBtn.setLightBorderView()
        percentBtn.setLightBorderView()
        clearBtn.setLightBorderView()
        backBtn.setLightBorderView()
        
    }
    
    func lightMode() {
        setBtnBlackColor()
        modeView.backgroundColor = UIColor(red: 248.0/255.0, green: 248.0/255.0, blue: 248.0/255.0, alpha: 1.0)
        modeView.layer.borderWidth = 0.5
        modeView.layer.borderColor = UIColor.systemGray6.cgColor
        modeView.layer.cornerRadius = 10
        screenView.backgroundColor = .white
        displayNumber.textColor = .black
        calculatorResults.textColor = .black
        mainView.backgroundColor = UIColor(red: 248.0/255.0, green: 248.0/255.0, blue: 248.0/255.0, alpha: 1.0)
        lightBtn.tintColor = .orange
        darkBtn.tintColor = .systemGray
    }
    
    func setBtnBlackColor() {
        zeroBtn.tintColor = .black
        oneBtn.tintColor = .black
        twoBtn.tintColor = .black
        threeBtn.tintColor = .black
        fourBtn.tintColor = .black
        fiveBtn.tintColor = .black
        sixBtn.tintColor = .black
        sevenBtn.tintColor = .black
        eightBtn.tintColor = .black
        nineBtn.tintColor = .black
        dotBtn.tintColor = .black
        reloadBtn.tintColor = .black
    }
    
    func setBtnWhiteColor() {
        zeroBtn.tintColor = .white
        oneBtn.tintColor = .white
        twoBtn.tintColor = .white
        threeBtn.tintColor = .white
        fourBtn.tintColor = .white
        fiveBtn.tintColor = .white
        sixBtn.tintColor = .white
        sevenBtn.tintColor = .white
        eightBtn.tintColor = .white
        nineBtn.tintColor = .white
        dotBtn.tintColor = .white
        reloadBtn.tintColor = .white
    }
    
    //MARK: - Main Code
    
    @IBAction func equalsTap(_ sender: Any)
    {
        if numberString != "" {
            if(isValidInput())
            {
                if numberString == " % " {
                    let checkedWorkingsForPercent = numberString.replacingOccurrences(of: " % ", with: " * 0.0")
                    
                    
                    let expression = NSExpression(format: checkedWorkingsForPercent)
                    if  let result = expression.expressionValue(with: nil, context: nil) as? Double {
                        let numberFormatter = NumberFormatter()
                        numberFormatter.numberStyle = .decimal
                        let formattedNumber = numberFormatter.string(from: NSNumber(value:result))
                        calculatorResults.text = formattedNumber
                    }
                    else {
                        print("failed")
                    }
                }
                else{
                    numberDoubleValue = numberString + ".0"
                    let checkedWorkingsForPercent = numberDoubleValue.replacingOccurrences(of: " % ", with: " * 0.0")
                    
                    
                    let expression = NSExpression(format: checkedWorkingsForPercent)
                    if  let result = expression.expressionValue(with: nil, context: nil) as? Double {
                        let numberFormatter = NumberFormatter()
                        numberFormatter.numberStyle = .decimal
                        let formattedNumber = numberFormatter.string(from: NSNumber(value:result))
                        calculatorResults.text = formattedNumber
                    }
                    else {
                        print("failed")
                    }
                }
            }
            else
            {
                let alert = UIAlertController(
                    title: "Invalid Input",
                    message: "Calculator unable to do math based on input",
                    preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Okay", style: .default))
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    
    func isValidInput() ->Bool
    {
        var count = 0
        var funcCharIndexes = [Int]()
        
        for char in numberString
        {
            if(specialCharacter(char: char))
            {
                funcCharIndexes.append(count)
            }
            count += 1
        }
        var previous: Int = -1
        
        for index in funcCharIndexes
        {
            if(index == 0)
            {
                return false
            }
            
            if(index == numberString.count - 1)
            {
                return false
            }
            
            if (previous != -1)
            {
                if(index - previous == 1)
                {
                    return false
                }
            }
            previous = index
        }
        return true
    }
    
    func specialCharacter (char: Character) -> Bool
    {
        if(char == "*")
        {
            return true
        }
        if(char == "/")
        {
            return true
        }
        if(char == "+")
        {
            return true
        }
        return false
    }
    
    func formatResult(result: Double) -> String
    {
        if(result.truncatingRemainder(dividingBy: 1) == 0)
        {
            return String(format: "%.0f", result)
        }
        else
        {
            return String(format: "%.2f", result)
        }
    }
    
    func addStringValue(value: String)
    {
        if (value == " % ") {
            presentDivide = true
            numberString = numberString + value
            displayNumber.text = numberString
        } else {
            if presentDivide == true {
                if (value == "0") {
                    findZero = true
                    presentDivide = false
                }
            }
            numberString = numberString + value
            displayNumber.text = numberString
        }
    }
    
    @IBAction func operationTapped(_ sender: UIButton) {
        if numberString.count != 0 && !operationTap {
            operationTap = true
            switch sender.tag {
            case 1:
                clearAll()
            case 2:
                numberString.removeLast()
                displayNumber.text = numberString
            case 3:
                addStringValue(value: " % ")
            case 4:
                addStringValue(value: " / ")
            case 5:
                addStringValue(value: " * ")
            case 6:
                addStringValue(value: " - ")
            case 7:
                addStringValue(value: " + ")
            default:
                print("default case")
            }
        }
    }
    
    @IBAction func numberTapped(_ sender: UIButton) {
        operationTap = false
        switch sender.tag{
        case 0:
            addStringValue(value: "0")
        case 1:
            addStringValue(value: "1")
        case 2:
            addStringValue(value: "2")
        case 3:
            addStringValue(value: "3")
        case 4:
            addStringValue(value: "4")
        case 5:
            addStringValue(value: "5")
        case 6:
            addStringValue(value: "6")
        case 7:
            addStringValue(value: "7")
        case 8:
            addStringValue(value: "8")
        case 9:
            addStringValue(value: "9")
        case 10:
            if numberString.count != 0 {
                addStringValue(value: ".")
            } else {
                addStringValue(value: "0.")
            }
        default:
            print("default case")
        }
    }
}
