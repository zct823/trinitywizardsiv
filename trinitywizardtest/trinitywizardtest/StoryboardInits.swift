//
//  StoryboardInits.swift
//  trinitywizardtest
//
//  Created by Mohd Zulhilmi Bin Mohd Zain on 21/04/2024.
//

import Foundation
import UIKit

extension LoginVC {
    class func initController() -> LoginVC {
        return UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
    }
}

extension MyContactsVC {

    class func initController() -> MyContactsVC {
        return UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "MyContactsVC") as! MyContactsVC
    }
}

extension MainTabVC {

    class func initController() -> MainTabVC {
        return UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "MainTabVC") as! MainTabVC
    }
}

extension ProfileViewController {

    class func initController() -> ProfileViewController {
        return UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
    }
}
