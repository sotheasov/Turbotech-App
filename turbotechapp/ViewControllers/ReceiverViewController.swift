//
//  ReceiverViewController.swift
//  turbotechapp
//
//  Created by Em Vannet on 4/27/20.
//  Copyright © 2020 Turbotech. All rights reserved.
//

import UIKit

class ReceiverViewController: UIViewController {
    @IBOutlet weak var navRecieverColor: UINavigationBar!
    @IBOutlet weak var mainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navRecieverColor.barTintColor = UIColor.init(hue: 212, saturation: 41, brightness: 49, alpha: 1)
        self.mainView.backgroundColor = UIColor(patternImage: UIImage(named: "splashscreen.png")!)

        
    }
    
    @IBAction func back(_ sender: Any) {
        
    }


}
