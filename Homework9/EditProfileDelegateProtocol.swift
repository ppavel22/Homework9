//
//  EditProfileDelegateProtocol.swift
//  Homework9
//
//  Created by mac on 29.10.2017.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit
protocol EditProfileDelegate {
    func  userDidChange(firstname:  String, lastname:  String)
    func  userDidResetInfo()
}
