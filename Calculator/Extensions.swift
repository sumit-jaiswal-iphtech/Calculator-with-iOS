//
//  Extensions.swift
//  Calculator
//
//  Created by iPHTech 29 on 24/05/23.
//

import Foundation
import UIKit

extension UIView {
    func setDarkView(borderColor: UIColor = UIColor(red: 35.0/255.0, green: 38.0/255.0, blue: 46.0/255.0, alpha: 1.0),
                       borderWidth: CGFloat = 1.5,
                       cornerRadius: CGFloat = 10.0,
                       shadowColor: UIColor = .black,
                       shadowOffset: CGSize = CGSize(width: 2.0, height: 4.0),
                       shadowRadius: CGFloat = 2.0,
                       shadowOpacity: Float = 0.3) {
        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = borderWidth
        self.layer.cornerRadius = cornerRadius
        self.layer.masksToBounds = true
        self.layer.shadowColor = shadowColor.cgColor
        self.layer.shadowOffset = shadowOffset
        self.layer.masksToBounds = false
        self.layer.shadowRadius = shadowRadius
        self.layer.shadowOpacity = shadowOpacity
    }
    
    func setDarkBorderView(borderColor: UIColor = UIColor(red: 35.0/255.0, green: 38.0/255.0, blue: 46.0/255.0, alpha: 1.0),
                       borderWidth: CGFloat = 1.5,
                       cornerRadius: CGFloat = 10.0) {
        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = borderWidth
        self.layer.cornerRadius = cornerRadius
    }
    
    func setLightView(borderColor: UIColor = UIColor(red: 248.0/255.0, green: 248.0/255.0, blue: 248.0/255.0, alpha: 0.2),
                       borderWidth: CGFloat = 1.5,
                       cornerRadius: CGFloat = 10.0,
                       shadowColor: UIColor = .black,
                       shadowOffset: CGSize = CGSize(width: 2.0, height: 4.0),
                       shadowRadius: CGFloat = 2.0,
                       shadowOpacity: Float = 0.3) {
        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = borderWidth
        self.layer.cornerRadius = cornerRadius
        self.layer.masksToBounds = true
        self.layer.shadowColor = shadowColor.cgColor
        self.layer.shadowOffset = shadowOffset
        self.layer.masksToBounds = false
        self.layer.shadowRadius = shadowRadius
        self.layer.shadowOpacity = shadowOpacity
    }
    
    func setLightBorderView(borderColor: UIColor = UIColor.systemGray6,
                       borderWidth: CGFloat = 1.5,
                       cornerRadius: CGFloat = 10.0) {
        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = borderWidth
        self.layer.cornerRadius = cornerRadius
    }
}
