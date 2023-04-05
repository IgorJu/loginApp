//
//  WelcomeViewController.swift
//  loginApp
//
//  Created by Igor on 02.04.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var nameOfPersonLabel: UILabel!

    var user: User?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradient()
        greetingLabel.text = "Welcome, \(user?.login ?? "")"
        nameOfPersonLabel.text = "My name is - \(user?.person.fullname ?? "")"
    }
}

//MARK: - Set background gradient - color
extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
    
}
//MARK: - fast setup gradient
extension UIViewController {
    func setupGradient() {
        let primaryColor = UIColor(
            red: 0/255,
            green: 255/255,
            blue: 127/255,
            alpha: 1
        )
        
        let secondaryColor = UIColor(
            red: 138/255,
            green: 43/255,
            blue: 226/255,
            alpha: 1
        )
        
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
    }
}

    




