//
//  InfoTableViewCell.swift
//  ID_estudante
//
//  Created by Lab SEC on 21/01/20.
//  Copyright © 2020 LabSEC. All rights reserved.
//

import UIKit

class InfoTableViewCell: UITableViewCell {
    //MARK: Properties
    
    @IBOutlet weak var title_lb: UILabel!
    @IBOutlet weak var info_lb: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
