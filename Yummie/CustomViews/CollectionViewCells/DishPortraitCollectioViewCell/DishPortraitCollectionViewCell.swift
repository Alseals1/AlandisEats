//
//  DishPortraitCollectionViewCell.swift
//  Yummie
//
//  Created by Alandis Seals on 2/7/22.
//

import UIKit

class DishPortraitCollectionViewCell: UICollectionViewCell {
    
   static let identifier = String(describing: DishPortraitCollectionViewCell.self)

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var desciptionLabel: UILabel!
    

    
    func setup(dish: Dish) {
        titleLabel.text = dish.name
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        caloriesLabel.text = dish.formatedCalories
        desciptionLabel.text = dish.description
    }
}
