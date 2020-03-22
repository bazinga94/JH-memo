//
//  JHTableViewCell.swift
//  JH-memo
//
//  Created by Jongho Lee on 2020/03/22.
//  Copyright © 2020 Jongho Lee. All rights reserved.
//

import UIKit

class JHTableViewCell: UITableViewCell {

	@IBOutlet weak var title: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
