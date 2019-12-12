//
//  StateDetailCellTableViewCell.swift
//  Representative
//
//  Created by Chris Anderson on 11/20/19.
//  Copyright © 2019 DevMtnStudent. All rights reserved.
//

import UIKit

class StateDetailCellTableViewCell: UITableViewCell {
    
    var representative: Representative? {
        didSet {
            updateViews()
        }
    }
    
    // MARK: - Outlets
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var linkLabel: UILabel!
    @IBOutlet weak var partyLabel: UILabel!
    @IBOutlet weak var districtLabel: UILabel!
    
    func updateViews() {
        guard let representative = representative else { return }
        nameLabel.text = representative.name
        partyLabel.text = representative.party
        districtLabel.text = representative.district
        linkLabel.text = representative.link
        phoneNumberLabel.text = representative.phone
    }
}
