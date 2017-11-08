//
//  EditViewController.swift
//  Homework9
//
//  Created by mac on 29.10.2017.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var switchOutlet: UISwitch!
    @IBOutlet weak var surnameText: UITextField!
    @IBOutlet weak var greetingsLabel: UILabel!
    var delegate: EditProfileDelegate?
    var name: String?
    var surname: String?
   override func viewDidLoad() {
        super.viewDidLoad()
    if let name1 = name {
        nameText.text = name1
    }
    if let surname1 = surname {
        surnameText.text = surname1
    }
    }
    
    @IBAction func confirmPressed(_ sender: Any) {
        let firstname  = nameText.text ?? ""
        let lastname = surnameText.text ?? ""
        delegate?.userDidChange(firstname: firstname, lastname: lastname)
        if switchOutlet.isOn {
            greetingsLabel.text = "Здравствуйте, \(firstname) \(lastname)!"
        }
        else {
            greetingsLabel.text = "Привет, \(firstname)!"
        }
    }
    
    @IBAction func resetPressed(_ sender: Any) {
        greetingsLabel.text = nil
        switchOutlet.isOn = false
        nameText.text = nil
        surnameText.text = nil
        delegate?.userDidResetInfo()
    }
}


