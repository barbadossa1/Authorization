//
//  WelcomeViewController.swift
//  Authorization
//
//  Created by VK on 18.05.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signOutBtn() {
        dismiss(animated: true)
    }
    
}
