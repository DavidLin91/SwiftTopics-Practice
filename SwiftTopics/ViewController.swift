//
//  ViewController.swift
//  SwiftTopics
//
//  Created by David Lin on 11/12/19.
//  Copyright © 2019 David Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var swiftTopics = ["Basic Operators", "Strings and Characters", "Collection Types", "Control Flow", "Functions",
                       "Closures", "Enumerations", "Structures and Classes", "Properties", "Methods", "Subscripts",
                       "Inheritance", "Initialization", "Deinitialization", "Optional Chaining", "Error Handling",
                       "Type Casting", "Nested Types", "Extensions", "Protocols", "Generics", "Opaque Types",
                       "Automatic Reference Counting", "Memory Safety", "Access Control", "Advanced Operators"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
    }
}

extension ViewController:
  UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return swiftTopics.count // counting the number of rows
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //1. get a cell using dequeue...()
        let cell = tableView.dequeueReusableCell(withIdentifier: "Swift Topics", for: indexPath)
        //2. Get object using index path
        let swiftTopic = swiftTopics[indexPath.row]
        //3. Configure a cell
        cell.textLabel?.text = swiftTopic
        return cell
    }
  }
