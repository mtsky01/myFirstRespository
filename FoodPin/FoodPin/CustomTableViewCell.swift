//
//  CustomTableViewCell.swift
//  FoodPin
//
//  Created by 马腾 on 16/2/29.
//  Copyright © 2016年 马腾. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var restaurantType: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var restaurantName: UILabel!
    @IBOutlet weak var restaurantimage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
