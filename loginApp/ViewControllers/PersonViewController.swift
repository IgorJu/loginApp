//
//  PersonViewController.swift
//  loginApp
//
//  Created by Igor on 05.04.2023.
//

import UIKit

class PersonViewController: UIViewController {
    
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
    }
    
    
    @IBAction func showBioViewController() {
performSegue(withIdentifier: "showBioVC", sender: nil)
    }
}

        
    



