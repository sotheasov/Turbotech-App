//
//  LocationViewController.swift
//  turbotechapp
//
//  Created by Em Vannet on 4/27/20.
//  Copyright © 2020 Turbotech. All rights reserved.
//

import UIKit

class LocationViewController: UIViewController {

    @IBOutlet weak var navLocationColor: UINavigationBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        navLocationColor.barTintColor = UIColor.init(hue: 212, saturation: 41, brightness: 49, alpha: 1)

        
    }
    

    @IBAction func back(_ sender: Any) {
        
    }
}
