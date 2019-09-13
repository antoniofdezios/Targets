//
//  ViewController.swift
//  CoreModuleApp
//
//  Created by Antonio Fernández Martín on 12/09/2019.
//  Copyright © 2019 Antonio Fernández Martín. All rights reserved.
//

import UIKit
import CoreModule

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loginVC = LoginViewController()
        //UIApplication.topViewController()?.present(loginVC, animated: true, completion: nil)
        
//        let appDelegate = UIApplication.shared.delegate as! AppDelegate
//        appDelegate.window?.rootViewController = loginVC
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let nav = UINavigationController(rootViewController: loginVC)
        appDelegate.window!.rootViewController = nav
    }
    
}

//Commented by unused
//extension UIApplication {
//    class func topViewController(viewController: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
//        if let nav = viewController as? UINavigationController {
//            return topViewController(viewController: nav.visibleViewController)
//        }
//        if let tab = viewController as? UITabBarController {
//            if let selected = tab.selectedViewController {
//                return topViewController(viewController: selected)
//            }
//        }
//        if let presented = viewController?.presentedViewController {
//            return topViewController(viewController: presented)
//        }
//        return viewController
//    }
//}
