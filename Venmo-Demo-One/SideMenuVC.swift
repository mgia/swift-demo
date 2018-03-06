//
//  SideMenuVC.swift
//  Venmo-Demo-One
//
//  Created by Marc g Tan on 3/5/18.
//  Copyright © 2018 Marc G Tan. All rights reserved.
//

import UIKit

class SideMenuVC: UITableViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
        switch indexPath.row {
        case 0: break
        case 1: NotificationCenter.default.post(name: NSNotification.Name("ShowLuckyDraw"), object: nil)
        case 2: break
        default: break
        }
    }

}
