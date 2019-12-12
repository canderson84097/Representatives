//
//  StateDetailTableViewController.swift
//  Representative
//
//  Created by Chris Anderson on 11/20/19.
//  Copyright © 2019 DevMtnStudent. All rights reserved.
//

import UIKit

class StateDetailTableViewController: UITableViewController {
    
    // MARK: - Properties
    
    var stateLanding: String?
    
    var representatives: [Representative] = [] {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    // MARK: - Outlets
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let state = stateLanding {
            RepresentativeController.searchRepresentatives(forState: state) { (repArray) in
                self.representatives = repArray
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return representatives.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "stateDetailCell", for: indexPath) as? StateDetailCellTableViewCell else { return UITableViewCell() }
        
        cell.representative = representatives[indexPath.row]
        
        return cell
        
    }
}
