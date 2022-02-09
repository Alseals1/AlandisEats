//
//  DishListTableViewCell.swift
//  Yummie
//
//  Created by Alandis Seals on 2/9/22.
//

import UIKit

class DishListTableViewCell: UITableViewCell {
static let identifier = "DishListTableViewCell"
    
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func setup(dish: Dish) {
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        titleLabel.text = dish.name
        descriptionLabel.text = dish.description
    }

    
}
