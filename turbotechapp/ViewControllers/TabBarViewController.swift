//
//  TabBarViewController.swift
//  turbotechapp
//
//  Created by Sov Sothea on 4/29/20.
//  Copyright © 2020 Turbotech. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    @IBOutlet weak var tabBarColor: UITabBar!
    override func viewDidLoad() {
        tabBarColor.barTintColor = UIColor.init(hue: 212, saturation: 41, brightness: 49, alpha: 1)
    }
    
}
