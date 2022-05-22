//
//  ViewController.swift
//  Authorization
//
//  Created by VK on 16.05.2022.
//
// Step 1. Check Username and Password. Go to Welcome page is the user data is correct or show the alert if it is invalid.
// Step 2. Show alerts for "forgot username" and "forgot password" buttons.
// Step 3. Transfer the username to the greeting text on the Welcome page
// Step 4. Show the keyboard if the user has tapped on the username or password input field

import UIKit

class SignInViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private var username = "Vadim"
    private var password = "Password"
    
    
    
    // MARK: Transfer Username to Welcome page message
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {
            return
        }
        welcomeVC.personUsername = username
    }
    
    
    // MARK: Alerts for invalid user data or empty text fields
    
    @IBAction func doneButtonPressed() {
        if usernameTextField.text != username && username .isEmpty || passwordTextField.text != password && password .isEmpty {
            showAlert(title: "Oops...", message: "Invalid username or password")
        }
        
    }
    
    // MARK: Alerts for forgot userdata button
    
    @IBAction func showAlertForgotButton(_ sender: UIButton) {
        if sender.tag == 0 {
            showAlert(title: "Hey!", message: "Your username is \(username)")
        } else {
            showAlert(title: "Hey!", message: "Your password is \(password)")
        }
    }
    
    // MARK: Alerts private funcion
    
    private func showAlert (title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(alertAction)
        present(alert, animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    
}

