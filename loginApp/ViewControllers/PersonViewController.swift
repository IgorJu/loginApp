//
//  PersonViewController.swift
//  loginApp
//
//  Created by Igor on 05.04.2023.
//

import UIKit

final class PersonViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var zodiacLabel: UILabel!
    @IBOutlet var englishLevelLabel: UILabel!
    
    @IBOutlet var navigationTitle: UINavigationItem!
    @IBOutlet var avatarImageView: UIImageView!
    
    var user: User?
            
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradient()
        setupLabels()
        navigationTitle.title = user?.person.fullname
        avatarImageView.image = UIImage(named: user?.person.avatar ?? "pencil")
        avatarImageView.layer.cornerRadius = avatarImageView.frame.height / 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController  else { return }
        bioVC.user = user
    }
    
    
    @IBAction func showBioViewController() {
        performSegue(withIdentifier: "showBioVC", sender: nil)
    }
    
    private func setupLabels() {
        nameLabel.text = user?.person.name
        surnameLabel.text = user?.person.surname
        zodiacLabel.text = user?.person.zodiac
        ageLabel.text = user?.person.age
        englishLevelLabel.text = user?.person.englishLevel
    }
    
}

        
    



