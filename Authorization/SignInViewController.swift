//
//  ViewController.swift
//  Authorization
//
//  Created by VK on 16.05.2022.
// 

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    
    
    
    // something wrong
    
    @IBAction func doneButtonPressed() {
        guard let inputText = usernameTextField.text, !inputText.isEmpty else {
            print("!")
            return
        }
    }
    
}

