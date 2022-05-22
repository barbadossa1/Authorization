//
//  WelcomeViewController.swift
//  Authorization
//
//  Created by VK on 18.05.2022.
//

import UIKit


class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeTextLabel: UILabel!
    
    var personUsername = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.black.cgColor, UIColor.blue.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        view.layer.insertSublayer(gradientLayer, at: 0)
        
        welcomeTextLabel.text = "Welcome \(personUsername)"
    }
    
    @IBAction func signOutBtn() {
        dismiss(animated: true)
    }

    
}
