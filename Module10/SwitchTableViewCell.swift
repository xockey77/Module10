//
//  SwitchTableViewCell.swift
//  Module10
//
//  Created by username on 03.11.2021.
//

import UIKit

class SwitchTableViewCell: UITableViewCell {

    @IBOutlet weak var toggleSwitch: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
