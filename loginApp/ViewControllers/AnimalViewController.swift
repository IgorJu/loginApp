//
//  AnimalViewController.swift
//  loginApp
//
//  Created by Igor on 05.04.2023.
//

import UIKit

final class AnimalViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var typeLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var actionsLabel: UILabel!
    
    @IBOutlet var imageView: UIImageView!
    
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let animal = user?.person.animal
        nameLabel.text = animal?.name
        typeLabel.text = animal?.type
        ageLabel.text = animal?.age
        actionsLabel.text = animal?.favoriteActions
        imageView.image = UIImage(named: animal?.image ?? "pencil")
        imageView.layer.cornerRadius = 10
        setupGradient()
    }
    
}
