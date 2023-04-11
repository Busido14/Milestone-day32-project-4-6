//
//  ViewController.swift
//  Milestone-project-4-5
//
//  Created by Артем Чжен on 10/04/23.
//

import UIKit

class ViewController: UITableViewController {

    var shopingList = [String]()
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Shoping list"
        view.backgroundColor = .cyan
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(added))

    }
    @objc func added() {
        let ac = UIAlertController(title: "Add products", message: nil, preferredStyle: .alert)
        ac.textFields
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shopingList.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Word", for: indexPath)
        cell.textLabel?.text = shopingList[indexPath.row]
        return cell
    }
}

