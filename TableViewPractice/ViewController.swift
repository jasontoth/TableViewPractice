//
//  ViewController.swift
//  TableViewPractice
//
//  Created by Jason Toth on 8/16/18.
//  Copyright © 2018 Jason Toth. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var ListView: UITableView!
    
    // data set for list page
    var logoList : [Logo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view, typically from a nib.
        ListView.dataSource = self
        ListView.delegate = self
        logoList = makeLogosArray()
    }

    // delegate - telling the app how many 'things' to display in the list
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return logoList.count;
    }
    
    // dataSource - telling the app where to source the items in the list
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        let logo = logoList[indexPath.row]
        cell.textLabel?.text = logo.stringLogo // use the array as the data source for the list page
        return cell
    }
    
    // Hookup Naviagation Controller to List -> Details page
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true) // deselect the last selected item in list page
        let selectedLogo = logoList[indexPath.row] // get selected item
        performSegue(withIdentifier: "TransitionToDetails", sender: selectedLogo) // pass selected item to details class for display
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsViewController = segue.destination as! DetailsViewController
        
        detailsViewController.item = sender as! Logo
    }
    
    func makeLogosArray() -> [Logo] {
        let logo1 = Logo();
        logo1.stringLogo = "";
        logo1.name = "item0";
        logo1.number = "393939";
        logo1.category = "apple";
        
        let logo2 = Logo();
        logo2.stringLogo = "🤬";
        logo2.name = "item1";
        logo2.number = "32323";
        logo2.category = "face";
        
        let logo3 = Logo();
        logo3.stringLogo = "😘";
        logo3.name = "item2";
        logo3.number = "54545";
        logo3.category = "face";
        
        let logo4 = Logo();
        logo4.stringLogo = "😎";
        logo4.name = "item3";
        logo4.number = "7676767";
        logo4.category = "face";
        
        let logo5 = Logo();
        logo5.stringLogo = "😱";
        logo5.name = "item4";
        logo5.number = "876654";
        logo5.category = "face";
        
        let logo6 = Logo();
        logo6.stringLogo = "🤪";
        logo6.name = "item5";
        logo6.number = "895432";
        logo6.category = "face";
        
        return [logo1, logo2, logo3, logo4, logo5, logo6]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

