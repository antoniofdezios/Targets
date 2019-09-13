//
//  ResetPassword.swift
//  CoreModule
//
//  Created by Antonio Fernández Martín on 12/09/2019.
//  Copyright © 2019 Antonio Fernández Martín. All rights reserved.
//

import UIKit

class ResetPassword: UIViewController {
    
    @IBOutlet var userTF: UITextField!
    @IBOutlet var resetB: UIButton!
    
    override func viewDidLoad() {
        print("Reset Password launched")
    }
    
    @IBAction func resetPassword(_ sender: Any) {
        print("reset! + \(userTF.text!)")
    }
    
}
