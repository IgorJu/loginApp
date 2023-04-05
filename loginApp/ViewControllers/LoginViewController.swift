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
    
    private let user = User.getPerson()
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabbarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabbarVC.viewControllers else { return }

        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = viewController as? UINavigationController {
                guard let personVC = navigationVC.topViewController as? PersonViewController else { return }
                personVC.user = user
            } else if let animalVC = viewController as? AnimalViewController {
                animalVC.user = user
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func forgotRegisterDataTapped(_ sender: UIButton) {
        sender.tag == 0
        ? alert(title: "Подсказка 💡", message: "Ваш логин - \(user.login)")
        : alert(title: "Подсказка 💡", message: "Ваш пароль - \(user.password)")
    }

    
    @IBAction func loginButtonTapped() {
        guard userTF.text == user.login, passwordTF.text == user.password else {
            alert(
                title: "Неверно введен логин или пароль",
                message: "Введите корректные данные",
                textField: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userTF.text = ""
        passwordTF.text = ""
    }
    
    private func alert(title: String, message: String, textField: UITextField? = nil) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel) { action in
            textField?.text = ""
        }
        alertController.addAction(action)
        present(alertController, animated: true)
    }
}

