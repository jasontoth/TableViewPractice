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
    var list = ["", "🤬", "😘", "😎", "😱", "🤪"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view, typically from a nib.
        ListView.dataSource = self
        ListView.delegate = self
    }

    // delegate - telling the app how many 'things' to display in the list
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return list.count;
    }
    
    // dataSource - telling the app where to source the items in the list
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = list[indexPath.row] // use the array as the data source for the list page
        return cell
    }
    
    // Hookup Naviagation Controller to List -> Details page
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true) // deselect the last selected item in list page
        let instance = list[indexPath.row] // get selected item
        performSegue(withIdentifier: "TransitionToDetails", sender: instance) // pass selected item to details class for display
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsViewController = segue.destination as! DetailsViewController
        
        detailsViewController.item = sender as! String
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

