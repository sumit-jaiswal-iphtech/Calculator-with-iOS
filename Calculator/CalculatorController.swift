//
//  ViewController.swift
//  Calculator
//
//  Created by  IPH Technologies Pvt. Ltd on 19/05/23.
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
    
    var operationTap = false
    var numberString:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        modeView.layer.shadowOpacity = 0.5
        modeView.layer.shadowOffset = .zero
        modeView.layer.shadowRadius = 10
        
        lightBtn.tintColor = .black
        equalBtn.layer.borderColor = Colors.borderColor.equalBtncolor.cgColor
        equalBtn.setBorder()
        
        clearAll()
        lightMode()
        setLightmode ()
    }
    
    func clearAll()
    {
        numberString = ""
        displayNumber.text = ""
        calculatorResults.text = ""
    }
    
    @IBAction func darkMode(_ sender: Any) {
        
        setBtnWhiteColor()
        setdarkmode ()
        modeView.setDarkModeView()
        screenView.backgroundColor = Colors.backgroundColor.screenView
        mainView.backgroundColor = Colors.backgroundColor.mainViewDarkMode
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
        modeView.setLightModeView()
        screenView.backgroundColor = .white
        displayNumber.textColor = .black
        calculatorResults.textColor = .black
        mainView.backgroundColor = Colors.backgroundColor.mainViewLightMode
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
    
    
    @IBAction func equalsTap(_ sender: Any) {
        
        if numberString != "" {
            
            let checkedForPercent = numberString.replacingOccurrences(of: " % ", with: " * 0.01 * ")
            let expression = NSExpression(format: checkedForPercent)
            if  let result = expression.toFloatingPoint().expressionValue(with: nil, context: nil) as? Double {
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
    
    func addStringValue(value: String)
    {
        numberString = numberString + value
        displayNumber.text = numberString
    }
    
    @IBAction func operationTapped(_ sender: UIButton) {
        if numberString.count != 0 && !operationTap {
            operationTap = true
            switch sender.tag {
            case 1:
                clearAll()
                operationTap = false
            case 2:
                numberString.removeLast()
                displayNumber.text = numberString
                operationTap = false
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
                operationTap = true
            } else {
                addStringValue(value: "0.")
            }
        default:
            print("default case")
        }
    }
}
