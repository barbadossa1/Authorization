//
//  WelcomeViewController.swift
//  Authorization
//
//  Created by VK on 18.05.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeTextLabel: UILabel!
    

    
    @IBAction func signOutBtn() {
        dismiss(animated: true)
    }
    
}
