//
//  ReceiverViewController.swift
//  turbotechapp
//
//  Created by Em Vannet on 4/27/20.
//  Copyright © 2020 Turbotech. All rights reserved.
//

import UIKit

class ReceiverViewController: UIViewController {
    @IBOutlet weak var mainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mainView.backgroundColor = UIColor(patternImage: UIImage(named: "splashscreen.png")!)

        // Do any additional setup after loading the view.
    }
    

    @IBAction func back(_ sender: Any) {
        
    }


}
