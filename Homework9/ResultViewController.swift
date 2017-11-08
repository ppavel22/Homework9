//
//  ResultViewController.swift
//  Homework9
//
//  Created by mac on 29.10.2017.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet  weak var nameProfile: UILabel!
    @IBOutlet   weak var surnameProfile: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showEdit", let destVC = segue.destination as? EditViewController{
            destVC.delegate = self
            destVC.name = nameProfile.text
            destVC.surname = surnameProfile.text
        }
    }
    @IBAction func editPressed(_ sender: Any) {
    
    }
    
}
extension ResultViewController: EditProfileDelegate {
    func userDidResetInfo() {
        nameProfile.text = ""
        surnameProfile.text = ""
    }
    
    func userDidChange(firstname: String, lastname: String) {
        nameProfile.text = firstname
        surnameProfile.text = lastname
    }
}

