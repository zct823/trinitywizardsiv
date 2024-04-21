//
//  ProfileViewController.swift
//  trinitywizardtest
//
//  Created by Mohd Zulhilmi Bin Mohd Zain on 21/04/2024.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var vwPVAvatarBg: UIView!
    @IBOutlet weak var lblPVAvatarInit: UILabel!
    
    @IBOutlet weak var lblPVUserName: UILabel!
    @IBOutlet weak var lblPVUserEmail: UILabel!
    @IBOutlet weak var lblPVUserDob: UILabel!
    
    @IBOutlet weak var btnPVUserUpdate: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let addLogout: UIBarButtonItem = UIBarButtonItem.init(title: "Logout", style: UIBarButtonItem.Style.plain, target: nil, action: nil)
        self.navigationItem.rightBarButtonItem = addLogout

        self.setupAvatar()
        self.setupEditProfile()
        self.setupProfiles()
        self.setupEditProfile()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)


    }


}
