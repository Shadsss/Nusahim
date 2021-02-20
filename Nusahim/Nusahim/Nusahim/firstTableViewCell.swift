//
//  firstTableViewCell.swift
//  Nusahim
//
//  Created by SHAHD HAKEEM on 20/02/2021.
//  Copyright © 2021 SHAHD HAKEEM. All rights reserved.
//

import UIKit

class firstTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBAction func btnClickCells(_ sender: Any) {
    }
    
    @IBOutlet weak var outletCall: UIButton!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
