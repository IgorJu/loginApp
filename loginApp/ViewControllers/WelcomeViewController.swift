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

    @IBOutlet var tabbarController: UITabBar!
    
    var userName = ""
    var personName = ""
    
    private let primaryColor = UIColor(
        red: 0/255,
        green: 255/255,
        blue: 127/255,
        alpha: 1
    )
    
    private let secondaryColor = UIColor(
        red: 138/255,
        green: 43/255,
        blue: 226/255,
        alpha: 1
    )

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        greetingLabel.text = "Welcome, \(userName)"
        nameOfPersonLabel.text = "My name is - \(personName)"
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
