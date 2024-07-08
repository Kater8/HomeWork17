//
//  SectionCell.swift
//  HomeWork17
//
//  Created by K on 25.06.2024.
//

import UIKit

// Комірка

class FirstSectionCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var photo: UIImageView!
    
    func setup(with title: String) {
        self.titleLabel.text = title
    }
}
 
class SecondSectionCell: UITableViewCell {
    
    @IBOutlet weak var settingsLabel: UILabel!
    
    @IBOutlet weak var `switch`: UISwitch!
    
    func setup(with title: String){
        self.settingsLabel.text = title
    }
}

class ThirdSectionCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel1: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var photo: UIImageView!
    
    @IBOutlet weak var buy: UIButton!
    
    func setup(with title: String){
        self.titleLabel1.text = title
    }
    
}
