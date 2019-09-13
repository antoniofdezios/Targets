//
//  LoginViewController.swift
//  CoreModule
//
//  Created by Antonio Fernández Martín on 12/09/2019.
//  Copyright © 2019 Antonio Fernández Martín. All rights reserved.
//

import UIKit

public class LoginViewController: UIViewController {
    
    @IBOutlet var viewTitle: UILabel!
    
    @IBOutlet var userTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var signInB: UIButton!
    @IBOutlet var signUpB: UIButton!
    
    override public func viewDidLoad() {
        super.viewDidLoad()

        print("Init LoginViewController")
        
    }

    @IBAction func signIn(_ sender: Any) {
        print("-SignIn-")
        print("username \(userTF.text!) password \(passwordTF.text!)")
    }
    
    @IBAction func signUp(_ sender: Any) {
        print("SignUp")
        let testVC = SignUpViewController.loadFromNib()
        present(testVC, animated: true, completion: nil)
    }
    
    @IBAction func forgotPass(_ sender: Any) {
        print("forgot Pass")
        
        //let bundle = Bundle(identifier: "com.antoniofm.CoreModule")
        let storyboard = UIStoryboard(name: "ResetPasswordStoryboard", bundle: self.nibBundle)
        let controller = storyboard.instantiateViewController(withIdentifier: "resetPassword")
        present(controller, animated: true, completion: nil)
        /*let storyboard = UIStoryboard(name: "ResetPasswordStoryboard", bundle: Bundle(for: ResetPassword.self))
        let controller = storyboard.instantiateViewController(withIdentifier: "ResetPassword")
        self.present(controller, animated: true, completion: nil)
        */
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: "LoginViewController", bundle: Bundle(for: LoginViewController.self))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension UIViewController {
    static func loadFromNib() -> Self {
        func instantiateFromNib<T: UIViewController>() -> T {
            return T.init(nibName: String(describing: T.self), bundle: nil)
        }
        
        return instantiateFromNib()
    }
}
