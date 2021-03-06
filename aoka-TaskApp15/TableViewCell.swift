//
//  TableViewCell.swift
//  aoka-TaskApp15
//
//  Created by aoka on 2021/05/24.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var checkImage: UIImageView!
    
    func configure(checkItem: CheckItem) {
        nameLabel.text = checkItem.name
        checkImage.image = checkItem.isChecked ? UIImage(named: "oranngeCheck") : nil
    }
}
