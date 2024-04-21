//
//  Themes.swift
//  trinitywizardtest
//
//  Created by Mohd Zulhilmi Bin Mohd Zain on 21/04/2024.
//

import Foundation
import UIKit

extension UILabel {

    func setupMainTextAppearance() {

        self.font = UIFont.systemFont(ofSize: 15.0, weight: UIFont.Weight.bold)
        self.textColor = UIColor.init(rgb: 0x0077B6)
    }

    func setupSubTextAppearance() {

        self.font = UIFont.systemFont(ofSize: 14.0, weight: UIFont.Weight.regular)
        self.textColor = UIColor.init(rgb: 0x7F7F7F)
    }

    func setupTextFieldTitle() {

        self.font = UIFont.systemFont(ofSize: 14.0, weight: UIFont.Weight.medium)
        self.textColor = UIColor.init(rgb: 0x000000)
    }

    func setupListName() {

        self.font = UIFont.systemFont(ofSize: 15.0, weight: UIFont.Weight.medium)
        self.textColor = UIColor.init(rgb: 0x060326)
    }

}

extension UIView {

    func setupFrame() {

        self.layer.cornerRadius = 8.0
        self.layer.borderColor = UIColor.init(rgb: 0x0077B6).cgColor
        self.layer.borderWidth = 0.7
        self.backgroundColor = UIColor.clear
    }
}

extension UIButton {

    func setupButton() {

        self.layer.cornerRadius = 8.0
        self.titleLabel?.font = UIFont.systemFont(ofSize: 16.0, weight: UIFont.Weight.bold)
        self.backgroundColor = UIColor.init(rgb: 0x96D3F2, alpha: 0.4)
    }
}




extension UIColor {
    convenience init(red: Int, green: Int, blue: Int, alpha: CGFloat = 1.0) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")

       self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: alpha)
   }

    convenience init(rgb: Int, alpha: CGFloat = 1.0) {
       self.init(
           red: (rgb >> 16) & 0xFF,
           green: (rgb >> 8) & 0xFF,
           blue: rgb & 0xFF,
           alpha: alpha
       )
   }
}
