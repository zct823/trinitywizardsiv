//
//  MainTabVC.swift
//  trinitywizardtest
//
//  Created by Mohd Zulhilmi Bin Mohd Zain on 21/04/2024.
//

import UIKit

class MainTabVC: UITabBarController {

    static var shared: MainTabVC!

    override func viewDidLoad() {
        super.viewDidLoad()

        MainTabVC.shared = self
    }


}
