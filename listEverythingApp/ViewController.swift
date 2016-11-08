//
//  ViewController.swift
//  listEverythingApp
//
//  Created by Marek Newton on 11/7/16.
//  Copyright © 2016 Marek Newton. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var tableViewItems: [String] = ["thing1", "thing2", "thing3"]
    let cellReuseIdentifier = "cell"
    
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    
    //Table View Stuff
    @IBOutlet var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if cellReuseIdentifier == "cell" {
            self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        }
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    // number of rows in table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableViewItems.count
    }
    
    // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // create a new cell if needed or reuse an old one
        let cell:UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as UITableViewCell!
        
        // set the text from the data model
        cell.textLabel?.text = self.tableViewItems[indexPath.row]
        
        return cell
    }
    
    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
    }

    
    @IBAction func buttonOnTouch(_ sender: Any) {
        let titleText: String = titleTextField.text!
        let descriptionText: String =  descriptionTextField.text!
        
        if titleText != "" && descriptionText != "" {
            let list = List(id: 0, title: titleText, description: descriptionText)
            tableViewItems.append(list.title)
        }
        
    }


}

