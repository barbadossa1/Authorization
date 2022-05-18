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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func showAlertWrongData(_ sender: Any) {
        let alertWrongData = UIAlertController(title: "Oops!", message: "Invalid username or password", preferredStyle: .alert)
        let alertWrongAction = UIAlertAction(title: "Ok", style: .default) {
            (action) in
            
        }
        
        
    }
    
    
    
}

