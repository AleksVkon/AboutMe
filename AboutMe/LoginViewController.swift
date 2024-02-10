//
//  ViewController.swift
//  AboutMe
//
//  Created by Aleksey Konchyts on 9.02.24.
//

import UIKit

final class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    let TeueUserName = "1"
    let TruePassword = "1"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.delegate = self
        userNameTextField.autocapitalizationType = .none
        userNameTextField.autocorrectionType = .no
        userNameTextField.spellCheckingType = .no
        
        passwordTextField.delegate = self
        passwordTextField.autocapitalizationType = .none
        passwordTextField.autocorrectionType = .no
        passwordTextField.spellCheckingType = .no
        passwordTextField.isSecureTextEntry = true

    }

    @IBAction func logInButtomAction() {
        guard userNameTextField.text == TeueUserName, passwordTextField.text == TruePassword else {
            showAlert(
                withTitle: "Wrong user name or password",
                andMessage: "try again"
            )
            passwordTextField.text = ""
            return
        }
    }
    
    @IBAction func forgotUserNameAction() {
       showAlert(withTitle: "Don't worry!", andMessage: "Your user name is 1")
    }
    
    @IBAction func forgotPasswordAction() {
        showAlert(withTitle: "Don't worry!", andMessage: "Your password is 1")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomVC = segue.destination as? WelcomeViewController
        welcomVC?.welcomeUserName = userNameTextField.text ?? ""
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
    }
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .cancel)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}

