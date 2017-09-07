//
//  CollectionViewController.swift
//  ImageCollection
//
//  Created by Sujanth Sebamalaithasan on 6/9/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

var images = ["Image1", "Image2", "Image3", "Image4", "Image5", "Image6"]

class CollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return images.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        
        cell.cellImage.image = UIImage(named: images[indexPath.row])
    
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let screenSize: CGRect = UIScreen.main.bounds
        var widthCell = 100
        var heightCell = 100
        
        //iPhone SE & 5
        if screenSize.width == 320 {
            widthCell = 75
            heightCell = 75
        }
        
        //iPhone 7
        if screenSize.width == 375 {
            widthCell = 100
            heightCell = 100
        }
        
        //iPhone 6+ & 7+
        if screenSize.width == 414 {
            widthCell = 110
            heightCell = 110
        }
        
        return CGSize(width: widthCell, height: heightCell)
    }
    

}
