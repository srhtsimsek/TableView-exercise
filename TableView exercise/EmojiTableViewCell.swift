//
//  EmojiTableViewCell.swift
//  TableView exercise
//
//  Created by Serhat  Şimşek  on 3.07.2023.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {
   
    //MARK: - UIElements
    @IBOutlet weak var symbolLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var usageLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    //MARK: - Funcs
    func update(with emoji: Emoji){
        symbolLabel.text = emoji.symbol
        titleLabel.text = emoji.name
        usageLabel.text = emoji.usage
        descriptionLabel.text = emoji.description
    }
}
