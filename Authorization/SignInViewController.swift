//
//  ViewController.swift
//  Authorization
//
//  Created by VK on 16.05.2022.
//

import UIKit

class SignInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func showAlertWrongData(_ sender: Any) {
        let alertWrongData = UIAlertController(title: "Oops!", message: "Invalid username or password", preferredStyle: .alert)
        let alertWrongAction = UIAlertAction(title: "Ok", style: .default) {
            (action) in
            
        }
        
        // something wrong here
        
        alertWrongData.addAction(action)
        self.present(alertWrongData, animated: true, completion: nil)
    }
    
    
    
}

