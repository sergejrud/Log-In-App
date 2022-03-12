//
//  ViewController.swift
//  Log-In App
//
//  Created by Сергей Рудь on 11.03.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let username = "User"
    private let password = "Password"

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.username = username
    }
    
    @IBAction func logInButtonPressed(_ sender: Any) {
        guard usernameTF.text == username, passwordTF.text == password else {
            showAlert(
                title: "Access denied",
                message: "Please, enter correct login and password",
                textField: passwordTF
            )
            return
        }
    }
    
    @IBAction func forgotButton(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your name is \(username)")
        : showAlert(title: "Oops!", message: "Your password is \(password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
}







// MARK: - Alert Controller
extension ViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Ok", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okButton)
        present(alert, animated: true)
    }
    
}









//// MARK: - Alert Controller
//extension ViewController {
//    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
//        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
//        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
//            textField?.text = ""
//        }
//        alert.addAction(okAction)
//        present(alert, animated: true)
//    }
//}
