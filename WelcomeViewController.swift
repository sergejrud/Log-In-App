//
//  WelcomeViewController.swift
//  Log-In App
//
//  Created by Сергей Рудь on 11.03.22.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var WelcomeTF: UILabel!
    
    var username = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        WelcomeTF.text = "Welcome, \(username)"
    }
}
