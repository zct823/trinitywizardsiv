//
//  LoginVCC.swift
//  trinitywizardtest
//
//  Created by Mohd Zulhilmi Bin Mohd Zain on 21/04/2024.
//

import Foundation
import UIKit

extension LoginVC {

    func setupTitle() {
        self.lblLoginWelcomeTitle.text = "Hi There!"
        self.lblLoginWelcomeTitle.setupMainTextAppearance()
    }

    func setupSubTitle() {
        self.lblLoginWelcomeDesc.text = "Please login to see your contact list!"
        self.lblLoginWelcomeDesc.setupSubTextAppearance()
    }

    func setupUserNameField() {
        self.lblUserFieldNameTitle.text = "Username"
        self.tfUserFieldName.text = "avi"
        self.tfUserFieldName.placeholder = "Your username"
        self.tfUserFieldName.keyboardType = UIKeyboardType.emailAddress
        self.lblUserFieldNameTitle.setupTextFieldTitle()
        self.ivUserFieldNameAvatar.image = UIImage.init(systemName: "person")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal).withTintColor(UIColor.init(rgb: 0x0077B6))
        self.vwUserFieldNameFrame.setupFrame()
    }

    func setupUserPassField() {
        self.lblUserFieldPassTitle.text = "Password"
        self.tfUserFieldPass.text = "savannah"
        self.tfUserFieldPass.placeholder = "Your password"
        self.tfUserFieldPass.isSecureTextEntry = true
        self.ivUserFieldPassAvatar.image = UIImage.init(systemName: "envelope")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal).withTintColor(UIColor.init(rgb: 0x0077B6))
        self.vwUserFieldPassFrame.setupFrame()
    }

    func setupLoginButton() {

        self.btnUserFieldLogin.setupButton()
        self.btnUserFieldLogin.addTarget(self, action: #selector(self.performLogin(_:)), for: UIControl.Event.touchUpInside)
    }

    @objc func performLogin(_ sender: UIButton) {

        if self.tfUserFieldName.text?.lowercased() == "avi".lowercased() && self.tfUserFieldPass.text?.lowercased() == "savannah".lowercased() {

            self.navigationController?.pushViewController(MainTabVC.initController(), animated: true)

        } else {


        }
    }



}
