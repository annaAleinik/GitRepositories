//
//  TableViewCell.swift
//  GitRepositories
//
//  Created by Анюта on 01.02.18.
//  Copyright © 2018 Анюта. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var loginLable: UILabel!
    @IBOutlet weak var idLable: UILabel!
    @IBOutlet weak var nameLable: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
