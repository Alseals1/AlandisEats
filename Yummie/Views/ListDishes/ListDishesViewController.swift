//
//  ListDishesViewController.swift
//  Yummie
//
//  Created by Alandis Seals on 2/9/22.
//

import UIKit

class ListDishesViewController: UIViewController {
        
    @IBOutlet weak var tableView: UITableView!
    var category: DishCategory!
    var dishes: [Dish] = [
        .init(id: "id1", name: "Chicken", image: "https://images.pexels.com/photos/2317540/pexels-photo-2317540.jpeg?cs=srgb&dl=pexels-vicky-tran-2317540.jpg&fm=jpg", description: "This the best Chicken on earth This the best Chicken on earth This the best Chicken on earth This the best Chicken on earth This the best Chicken on earth This the best Chicken on earth This the best Chicken on earth This the best Chicken on earth This the best Chicken on earth", caloies: 190),
        .init(id: "id1", name: "Garri", image: "https://media.istockphoto.com/photos/oha-soup-with-beef-and-garri-picture-id1327486588?s=612x612", description: "This the best Chicken on earth", caloies: 500),
        .init(id: "id1", name: "Pizza", image: "https://images.pexels.com/photos/2762942/pexels-photo-2762942.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500", description: "This the best Chicken on earth", caloies: 1000)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = category.name
        registercells()
    }
    
    private func registercells() {
        tableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }
    

}

extension ListDishesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dishes.count
    }
    
   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier, for: indexPath) as! DishListTableViewCell
        cell.setup(dish: dishes[indexPath.row])
        
        return cell
    
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instantiate()
        controller.dish = dishes[indexPath.row]
        navigationController?.pushViewController(controller, animated: true)
    }
    
}

