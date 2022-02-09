//
//  DishLandscapeCollectionViewCell.swift
//  Yummie
//
//  Created by Alandis Seals on 2/7/22.
//

import UIKit

class DishLandscapeCollectionViewCell: UICollectionViewCell {
    static let identifier = String(describing: DishLandscapeCollectionViewCell.self)
    
    @IBOutlet weak var discriptionLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dishImageView: UIImageView!
    
    func setup(dish: Dish) {
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        discriptionLabel.text = dish.description
        caloriesLabel.text = dish.formatedCalories
        titleLabel.text = dish.name
    }

}
