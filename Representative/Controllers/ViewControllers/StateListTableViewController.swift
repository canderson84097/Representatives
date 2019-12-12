//
//  StateListTableViewController.swift
//  Representative
//
//  Created by Chris Anderson on 11/20/19.
//  Copyright © 2019 DevMtnStudent. All rights reserved.
//

import UIKit

class StateListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return States.all.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "stateCell", for: indexPath)
        let state = States.all[indexPath.row]
        
        cell.textLabel?.text = state

        return cell
    }

    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toStateDetail" {
            guard let indexPath = tableView.indexPathForSelectedRow,
            let destinationVC = segue.destination as? StateDetailTableViewController
                else { return }
            destinationVC.stateLanding = States.all[indexPath.row]
            
        }
    }
}
