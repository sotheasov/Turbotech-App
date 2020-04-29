//
//  ProfileViewController.swift
//  turbotechapp
//
//  Created by Em Vannet on 4/27/20.
//  Copyright © 2020 Turbotech. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var navProfileColor: UINavigationBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        navProfileColor.barTintColor = UIColor.init(hue: 212, saturation: 41, brightness: 49, alpha: 1)
        self.mainView.backgroundColor = UIColor(patternImage: UIImage(named: "splashscreen.png")!)
        
        
//        imageProfile.layer.cornerRadius = imageProfile.frame.size.width/2
//        imageProfile.clipsToBounds = true
        
//        statusBarColorChange()
        
    }
}
