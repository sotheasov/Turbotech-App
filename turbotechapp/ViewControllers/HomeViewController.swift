//
//  HomeViewController.swift
//  turbotechapp
//
//  Created by Em Vannet on 4/27/20.
//  Copyright © 2020 Turbotech. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate {
   
    @IBOutlet weak var slideView: UICollectionView!
    @IBOutlet weak var pageView: UIPageControl!
    @IBOutlet weak var collectionGrid: UICollectionView!
    
    var arrayImage = [
        UIImage(named: "picslider1"),
        UIImage(named: "picslider3"),
        UIImage(named: "picslider3"),
        UIImage(named: "picslider1"),
        UIImage(named: "picslider3"),
        UIImage(named: "picslider3"),
    ]
    var data = [
        "Product",
        "Location",
        "Staff",
        "Help Desk",
        "Support",
        "Speed Test"
    ]
    var icon = [
        UIImage(named: "testicon"),
        UIImage(named: "testicon"),
        UIImage(named: "testicon"),
        UIImage(named: "testicon"),
        UIImage(named: "testicon"),
        UIImage(named: "testicon"),
    ]
    var DataModel = [DataHome]()

    
    var time = Timer()
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        slideView.dataSource = self
        slideView.delegate = self
        pageView.numberOfPages = arrayImage.count
        pageView.currentPage = 0
        collectionGrid.dataSource = self
        collectionGrid.delegate = self
        DispatchQueue.main.async {
            self.time = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.changeImage), userInfo: nil, repeats: true)
        }
        
        setCollectionLayout()
        
        // Do any additional setup after loading the view.
    }
    
    @objc func changeImage(){
        if counter < arrayImage.count {
               let index = IndexPath.init(item: counter, section: 0)
               self.slideView.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
               pageView.currentPage = counter
               counter += 1
           } else {
               counter = 0
               let index = IndexPath.init(item: counter, section: 0)
               self.slideView.scrollToItem(at: index, at: .centeredHorizontally, animated: false)
               pageView.currentPage = counter
               counter = 1
           }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == collectionGrid{
            return data.count
        }
        else{
            return arrayImage.count
        }
    }
       
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == collectionGrid {
            let cellgrid = collectionView.dequeueReusableCell(withReuseIdentifier: "cellGrid", for: indexPath) as! CollectionViewCell
            cellgrid.image.image = icon[indexPath.row]
            cellgrid.myLabel.text = data[indexPath.row]
            return cellgrid
        }
        else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath);
            if let vc = cell.viewWithTag(111) as? UIImageView{
                vc.image = arrayImage[indexPath.row]
            }
            else if let ab = cell.viewWithTag(222) as? UIPageControl{
                ab.currentPage = indexPath.row
            }
            return cell
        }
    }
    
    func setCollectionLayout() {
        let layout:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top:0,left:0,bottom:0,right:0)
        layout.itemSize = CGSize(width: UIScreen.main.bounds.size.width/2 - 1, height: 145)
        layout.minimumInteritemSpacing = 1
        layout.minimumLineSpacing = 1
        collectionGrid.collectionViewLayout = layout
    }
}
