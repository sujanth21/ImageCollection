//
//  DetailViewController.swift
//  ImageCollection
//
//  Created by Sujanth Sebamalaithasan on 8/9/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    var cellData: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = UIImage(named: cellData)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
