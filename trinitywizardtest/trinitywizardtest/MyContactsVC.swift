//
//  MyContactsVC.swift
//  trinitywizardtest
//
//  Created by Mohd Zulhilmi Bin Mohd Zain on 21/04/2024.
//

import UIKit

class MyContactsVC: UIViewController {

    @IBOutlet weak var tvMCLists: MyContactsLists!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "My Contacts"

        self.tvMCLists.initializes()
    }


}
