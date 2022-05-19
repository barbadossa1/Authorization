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
    
    private var username = "username"
    private var password = "password"
    
    
    // Alerts for invalid user data or empty text fields
    
    @IBAction func doneButtonPressed() {
        if usernameTextField.text != username && username .isEmpty || passwordTextField.text != password && password .isEmpty {
            showAlert(title: "Oops...", message: "Invalid username or password")
        }
        
        // check that username has not numbers
        
        if username = Double(username) {
            showAlert(title: "Oops...", message: "Do not use numbers in username field")
        }
    }
    
    @IBAction func showAlertForgotButton(_ sender: UIButton) {
        if sender.tag == 0 {
            showAlert(title: "Hey!", message: "Your username is \(username)")
        } else {
            showAlert(title: "Hey!", message: "Your password is \(password)")
        }
    }
    
    // Alerts private funcion
    
    private func showAlert (title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Ok", style: .default)
    }
    
    
    
    
    
    
    
}

