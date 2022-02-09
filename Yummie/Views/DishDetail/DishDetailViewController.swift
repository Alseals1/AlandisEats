//
//  DishDetailViewController.swift
//  Yummie
//
//  Created by Alandis Seals on 2/9/22.
//

import UIKit

class DishDetailViewController: UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var discriptionLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    
    var dish: Dish!
    override func viewDidLoad() {
        super.viewDidLoad()
populateImageView()
    }
    
    private func populateImageView() {
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        titleLabel.text = dish.name
        discriptionLabel.text = dish.description
        caloriesLabel.text = dish.formatedCalories
    }
    
    @IBAction func placeOrderButtonClicked(_ sender: UIButton) {
        
    }
    
}
