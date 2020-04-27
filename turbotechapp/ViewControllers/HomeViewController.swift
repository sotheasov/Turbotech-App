//
//  HomeViewController.swift
//  turbotechapp
//
//  Created by Em Vannet on 4/27/20.
//  Copyright © 2020 Turbotech. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate {
   
    @IBOutlet weak var sliderCollectionView: UICollectionView!
    @IBOutlet weak var pageView: UIPageControl!
    var arrayImage = [
        UIImage(named: "picslider1"),
        UIImage(named: "picslider3"),
        UIImage(named: "picslider3"),
        UIImage(named: "picslider1"),
        UIImage(named: "picslider3"),
        UIImage(named: "picslider3"),
    ]
    var time = Timer()
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        sliderCollectionView.dataSource = self
        sliderCollectionView.delegate = self
        
        pageView.numberOfPages = arrayImage.count
        pageView.currentPage = 0
        
        DispatchQueue.main.async {
            self.time = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.changeImage), userInfo: nil, repeats: true)
        }
        
        // Do any additional setup after loading the view.
    }
    
    @objc func changeImage(){
        if counter < arrayImage.count {
               let index = IndexPath.init(item: counter, section: 0)
               self.sliderCollectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
               pageView.currentPage = counter
               counter += 1
           } else {
               counter = 0
               let index = IndexPath.init(item: counter, section: 0)
               self.sliderCollectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: false)
               pageView.currentPage = counter
               counter = 1
           }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        arrayImage.count
    }
       
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
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
