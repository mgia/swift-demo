//
//  ViewController.swift
//  Venmo-Demo-One
//
//  Created by Marc g Tan on 3/5/18.
//  Copyright © 2018 Marc G Tan. All rights reserved.
//

import UIKit

class ContainerVC: UIViewController {
    
    // Access side menu contraint to 'slide' menu into view
    @IBOutlet weak var sideMenuConstraint: NSLayoutConstraint!
    var sideMenuOpen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(toggleSideMenu),
                                               name: NSNotification.Name("ToggleSideMenu"),
                                               object: nil)
    }
    
    // Function to toggle side menu
    @objc func toggleSideMenu() {
        if sideMenuOpen {
            sideMenuConstraint.constant = -270
            sideMenuOpen = false
        } else {
            sideMenuConstraint.constant = 0
            sideMenuOpen = true
        }
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
}

