//
//  LoginViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    

    override func viewDidLoad() {
        emailTextfield.delegate = self
        passwordTextfield.delegate = self
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        
        guard let email = emailTextfield.text, let password = passwordTextfield.text else { return }
        
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print(error.localizedDescription)
            } else {
                self.performSegue(withIdentifier: K.loginSegue, sender: self)
            }
        }
        
        
    }
    
}

extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        emailTextfield.endEditing(true)
        passwordTextfield.endEditing(true)
    }
}
