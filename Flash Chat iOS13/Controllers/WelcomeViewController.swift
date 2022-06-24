//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: CLTypingLabel!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var logInButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = K.appName
        registerButton.layer.cornerRadius = registerButton.frame.height/2
        logInButton.layer.cornerRadius = logInButton.frame.height/2
//        titleLabel.text = ""
//        let logoText = "⚡️FlashChat"
//        var timeDelay = 0.0
//
//        for char in logoText {
//            Timer.scheduledTimer(withTimeInterval: 0.1 * timeDelay, repeats: false) { timer in
//                self.titleLabel.text?.append(char)
//            }
//            timeDelay += 1
//        }
       
    }
    

}
