//
//  MainVC.swift
//  Venmo-Demo-One
//
//  Created by Marc g Tan on 3/5/18.
//  Copyright © 2018 Marc G Tan. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBAction func onMoreTapped() {
        print("Toggle side menu")
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }
}
