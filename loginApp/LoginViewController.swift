//
//  ViewController.swift
//  loginApp
//
//  Created by Igor on 02.04.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var userTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func forgotLoginButtonTapped(_ sender: Any) {
        alert(title: "Подсказка 💡", message: "Ваш логин - Alex", style: .alert)    }
    
    @IBAction func forgotPasswordButtonTapped(_ sender: Any) {
        alert(title: "Подсказка 💡", message: "Ваш пароль - 111", style: .alert)
    }
    
    @IBAction func loginButtonTapped() {
        if userTF.text != "Alex" || passwordTF.text != "111" {
            let alertController = UIAlertController(
                title: "Неверно введен логин или пароль",
                message: "Пожалуйста, введите корректные данные",
                preferredStyle: .alert
            )
            let action = UIAlertAction(title: "OK", style: .cancel) { action  in
                self.passwordTF.text = ""
            }
            alertController.addAction(action)
            present(alertController, animated: true)
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let loginVC = segue.destination as? LoginViewController else { return }
        loginVC.userTF.text = ""
        loginVC.passwordTF.text = ""
    }
    
    private func alert(title: String, message: String, style: UIAlertController.Style) {
        let alertController = UIAlertController(
            title: title,
            message: message,
            preferredStyle: style)
        let action = UIAlertAction(title: "OK", style: .cancel) { action in
        }
        alertController.addAction(action)
        present(alertController, animated: true)
    }
}
