//
//  DetailsViewController.swift
//  TableViewPractice
//
//  Created by Jason Toth on 8/16/18.
//  Copyright © 2018 Jason Toth. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var logoImage: UILabel!
    @IBOutlet weak var logoName: UILabel!
    @IBOutlet weak var logoNumber: UILabel!
    @IBOutlet weak var logoCategory: UILabel!
    var item = Logo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        logoImage.text = item.stringLogo
        logoName.text = "Name: \(item.name)"
        logoNumber.text = item.number
        logoCategory.text = item.category

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
