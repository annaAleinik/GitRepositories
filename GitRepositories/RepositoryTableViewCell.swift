//
//  RepositoryTableViewCell.swift
//  GitRepositories
//
//  Created by Анюта on 01.02.18.
//  Copyright © 2018 Анюта. All rights reserved.
//

import UIKit

class RepositoryTableViewCell: UITableViewCell {
    
    @IBOutlet weak var loginLable: UILabel!
    @IBOutlet weak var idLable: UILabel!
    @IBOutlet weak var urlLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configWithModel(model: RepositoryModel) {
        loginLable.text = model.login
        idLable.text = model.id
        urlLable.text = model.url
        
        
    }
    
}








