//
//  Dish.swift
//  Yummie
//
//  Created by Alandis Seals on 2/7/22.
//

import Foundation

struct Dish {
    let id, name, image, description: String?
    let caloies: Int?
    
    var formatedCalories: String {
        return "\(caloies ?? 0) calories"
    }
}
