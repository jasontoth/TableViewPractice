//
//  DetailsViewController.swift
//  TableViewPractice
//
//  Created by Jason Toth on 8/16/18.
//  Copyright © 2018 Jason Toth. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var itemLabel: UILabel!
    @IBOutlet weak var itemDetails: UILabel!
    
    var item = "No item"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        itemLabel.text = item
        
        if item == "" {
            itemDetails.text = "item 0"
        }
        else if item == "🤬" {
            itemDetails.text = "item 1"
        }
        else if item == "😘" {
            itemDetails.text = "item 2"
        }
        else if item == "😎" {
            itemDetails.text = "item 3"
        }
        else if item == "😱" {
            itemDetails.text = "item 4"
        }
        else if item == "🤪" {
            itemDetails.text = "item 5"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
