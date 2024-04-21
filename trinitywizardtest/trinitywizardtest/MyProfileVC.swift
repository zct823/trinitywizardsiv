//
//  MyProfileVC.swift
//  trinitywizardtest
//
//  Created by Mohd Zulhilmi Bin Mohd Zain on 21/04/2024.
//

import UIKit

extension ProfileViewController {

    func setupAvatar() {

        self.vwPVAvatarBg.layer.cornerRadius = self.vwPVAvatarBg.bounds.width / 2.0
        self.lblPVAvatarInit.text = "AA"
        self.lblPVAvatarInit.font = UIFont.systemFont(ofSize: 40.0, weight: UIFont.Weight.light)
    }

    func setupProfiles() {

        self.lblPVUserName.text = "Avi Savannah"
        self.lblPVUserName.font = UIFont.systemFont(ofSize: 15.0, weight: UIFont.Weight.medium)
        self.lblPVUserEmail.text = "avisavannah@gmail.com"
        self.lblPVUserEmail.font = UIFont.systemFont(ofSize: 15.0, weight: UIFont.Weight.medium)
        self.lblPVUserDob.text = "26/6/1998"
        self.lblPVUserDob.font = UIFont.systemFont(ofSize: 15.0, weight: UIFont.Weight.medium)
    }

    func setupEditProfile() {

        self.btnPVUserUpdate.setupButton()
        self.btnPVUserUpdate.setTitle("Update my detail", for: UIControl.State.normal)
    }
}
