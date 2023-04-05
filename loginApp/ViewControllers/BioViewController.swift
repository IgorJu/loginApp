//
//  BioViewController.swift
//  loginApp
//
//  Created by Igor on 05.04.2023.
//

import UIKit

final class BioViewController: UIViewController {
    
    @IBOutlet var descriptionTextView: UITextView!
    
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradient()
        descriptionTextView.text = user?.person.description
    }
    
}
