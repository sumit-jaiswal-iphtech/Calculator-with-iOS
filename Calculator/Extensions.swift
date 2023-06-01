//
//  Extensions.swift
//  Calculator
//
//  Created by  IPH Technologies Pvt. Ltd on 24/05/23.
//

import Foundation
import UIKit

extension UIView {
    func setDarkView() {
        setDarkBorderView()
        setShadow()
    }
    
    func setDarkBorderView(borderColor: UIColor = Colors.borderColor.darkBorderView) {
        self.layer.borderColor = borderColor.cgColor
        setBorder()
    }
    
    func setLightView(borderColor: UIColor = Colors.borderColor.lightViewBorder) {
        self.layer.borderColor = borderColor.cgColor
        setBorder()
        setShadow()
    }
    
    
    func setShadow(shadowColor: UIColor = .black,
                   shadowOffset: CGSize = CGSize(width: 2.0, height: 4.0),
                   shadowRadius: CGFloat = 2.0,
                   shadowOpacity: Float = 0.3) {
        self.layer.masksToBounds = true
        self.layer.shadowColor = shadowColor.cgColor
        self.layer.shadowOffset = shadowOffset
        self.layer.masksToBounds = false
        self.layer.shadowRadius = shadowRadius
        self.layer.shadowOpacity = shadowOpacity
    }
    
    func setLightBorderView(borderColor: UIColor = UIColor.systemGray6) {
        self.layer.borderColor = borderColor.cgColor
        setBorder()
    }
    
    
    func setBorder( borderWidth: CGFloat = 1.5,
                    cornerRadius: CGFloat = 10.0) {
        self.layer.borderWidth = borderWidth
        self.layer.cornerRadius = cornerRadius
    }
    
    func setDarkModeView(backgroundColor: UIColor = Colors.backgroundColor.darkModeView,
                         borderColor: UIColor =  UIColor.darkGray ) {
        setBorder()
        self.layer.borderColor = borderColor.cgColor
        self.layer.backgroundColor = backgroundColor.cgColor
    }
    
    func setLightModeView(backgroundColor: UIColor = Colors.backgroundColor.lightModeView,
                          borderColor: UIColor =  UIColor.systemGray6) {
        self.layer.borderColor = borderColor.cgColor
        self.layer.backgroundColor = backgroundColor.cgColor
        setBorder()
    }
}
