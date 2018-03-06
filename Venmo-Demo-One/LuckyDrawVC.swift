//
//  LuckyDrawVC.swift
//  Venmo-Demo-One
//
//  Created by Marc G Tan on 5/3/18.
//  Copyright © 2018 Marc G Tan. All rights reserved.
//

import UIKit

class LuckyDrawVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var submitButton: UIButton!
    
    @IBAction func clickButton(_ sender: UIButton) {
        createAlert("Transaction Success!", messageText: "Randomized amounts have been sent to recipients. Let's see whos lucky!")
    }
   
    func createAlert(_ titleText: String, messageText: String) {
        print("Alert!")
        let alert = UIAlertController(title: titleText,
                                      message: messageText,
                                      preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .default,                           handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
}
