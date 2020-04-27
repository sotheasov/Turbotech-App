//
//  gridItemCell.swift
//  turbotechapp
//
//  Created by Em Vannet on 4/27/20.
//  Copyright © 2020 Turbotech. All rights reserved.
//

import UIKit

class gridItemCell: UICollectionViewCell {

    @IBOutlet weak var myimage: UIImageView!
    @IBOutlet weak var mylabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setData(name: String){
        self.mylabel.text = name
    }

}
