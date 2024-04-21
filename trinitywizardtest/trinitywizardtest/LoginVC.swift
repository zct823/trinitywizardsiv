//
//  LoginVC.swift
//  trinitywizardtest
//
//  Created by Mohd Zulhilmi Bin Mohd Zain on 21/04/2024.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var lblLoginWelcomeTitle: UILabel!
    @IBOutlet weak var lblLoginWelcomeDesc: UILabel!
    
    @IBOutlet weak var vwUserFieldNameFrame: UIView!
    @IBOutlet weak var lblUserFieldNameTitle: UILabel!
    @IBOutlet weak var ivUserFieldNameAvatar: UIImageView!
    @IBOutlet weak var tfUserFieldName: UITextField!

    @IBOutlet weak var vwUserFieldPassFrame: UIView!
    @IBOutlet weak var lblUserFieldPassTitle: UILabel!
    @IBOutlet weak var ivUserFieldPassAvatar: UIImageView!
    @IBOutlet weak var tfUserFieldPass: UITextField!

    @IBOutlet weak var btnUserFieldLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setupTitle()
        self.setupSubTitle()
        self.setupUserNameField()
        self.setupUserPassField()
        self.setupLoginButton()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }


}

extension LoginVC {

    
}
