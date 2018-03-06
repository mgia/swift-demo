//
//  MainVC.swift
//  Venmo-Demo-One
//
//  Created by Marc g Tan on 3/5/18.
//  Copyright © 2018 Marc G Tan. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showScreen),
                                               name: NSNotification.Name("ShowLuckyDraw"),
                                               object: nil)
    }
    
    // Navigate to Lucky Draw view
    @objc func showScreen() {
        performSegue(withIdentifier: "ShowLuckyDraw", sender: nil)
    }
    
    // Toggle side menu
    @IBAction func onMoreTapped() {
        print("Toggle side menu")
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }
}
