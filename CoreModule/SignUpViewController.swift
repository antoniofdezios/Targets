//
//  SignUpViewController.swift
//  CoreModule
//
//  Created by Antonio Fernández Martín on 12/09/2019.
//  Copyright © 2019 Antonio Fernández Martín. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet var userTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Init SignUpViewController")
        
    }
    
    @IBAction func SignUp(_ sender: Any) {
        print("SignUp button pushed: \(userTF.text!)")
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: "SignUpViewController", bundle: Bundle(for: SignUpViewController.self))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
