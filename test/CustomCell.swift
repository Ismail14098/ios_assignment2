//
//  CustomCell.swift
//  test
//
//  Created by Исмаил Ибрагим on 1/31/21.
//

import UIKit

class CustomCell: UITableViewCell {
    
    @IBOutlet var title: UILabel!
    @IBOutlet var result: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
