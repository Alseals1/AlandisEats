//
//  HomeViewController.swift
//  Yummie
//
//  Created by Alandis Seals on 2/2/22.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var categoryCollectionView: UICollectionView!
    @IBOutlet weak var popularCollectionView: UICollectionView!
    @IBOutlet weak var specialCollectionView: UICollectionView!
    
    var categories: [DishCategory] = [
        .init(id: "id1", name: "American Dish", image: "Photo by Lisa Fotios from Pexels: https://www.pexels.com/photo/selective-focus-photography-of-pasta-with-tomato-and-basil-1279330/"),
            .init(id: "id1", name: "American Dish 2", image: "https://www.pexels.com/photo/selective-focus-photography-of-pasta-with-tomato-and-basil-1279330/"),
            .init(id: "id1", name: "American Dish 3", image: "https://www.pexels.com/photo/selective-focus-photography-of-pasta-with-tomato-and-basil-1279330/"),
            .init(id: "id1", name: "American Dish 4", image: "Photo by Lisa Fotios from Pexels: https://www.pexels.com/photo/selective-focus-photography-of-pasta-with-tomato-and-basil-1279330/"),
            .init(id: "id1", name: "American Dish 5", image: "Photo by Lisa Fotios from Pexels: https://www.pexels.com/photo/selective-focus-photography-of-pasta-with-tomato-and-basil-1279330/"),
            .init(id: "id1", name: "American Dish 6", image: "Photo by Lisa Fotios from Pexels: https://www.pexels.com/photo/selective-focus-photography-of-pasta-with-tomato-and-basil-1279330/"),
    ]
    
    var populars: [Dish] = [
        .init(id: "id1", name: "Chicken", image: "https://images.pexels.com/photos/2317540/pexels-photo-2317540.jpeg?cs=srgb&dl=pexels-vicky-tran-2317540.jpg&fm=jpg", description: "This the best Chicken on earth This the best Chicken on earth This the best Chicken on earth This the best Chicken on earth This the best Chicken on earth This the best Chicken on earth This the best Chicken on earth This the best Chicken on earth This the best Chicken on earth", caloies: 190),
        .init(id: "id1", name: "Garri", image: "https://media.istockphoto.com/photos/oha-soup-with-beef-and-garri-picture-id1327486588?s=612x612", description: "This the best Chicken on earth", caloies: 500),
        .init(id: "id1", name: "Pizza", image: "https://images.pexels.com/photos/2762942/pexels-photo-2762942.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500", description: "This the best Chicken on earth", caloies: 1000)
    ]
    var specials: [Dish] = [
        .init(id: "id1", name: "Fried Plaintain", image: "https://images.pexels.com/photos/5409328/pexels-photo-5409328.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500", description: "This the best Chicken on earth", caloies: 190),
        .init(id: "id1", name: "Turkey Sandwish", image: "https://images.pexels.com/photos/11101371/pexels-photo-11101371.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500", description: "This the best Chicken on earth", caloies: 500),
        .init(id: "id1", name: "Shrimp salad", image: "https://images.pexels.com/photos/10281067/pexels-photo-10281067.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500", description: "This the best Chicken on earth", caloies: 1000)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
registerCell()
    }
    
// MARK: -------Register Cell Function-------
    private func registerCell() {
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        popularCollectionView.register(UINib(nibName: DishPortraitCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishPortraitCollectionViewCell.identifier)
        specialCollectionView.register(UINib(nibName: DishLandscapeCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishLandscapeCollectionViewCell.identifier)
    }
}

// MARK: ------------Exetensions-------------
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch collectionView {
        case categoryCollectionView:
            return categories.count
        case popularCollectionView:
           return  populars.count
        case specialCollectionView:
            return specials.count
        default:
            return 0
        }
      
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
        case categoryCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath)as! CategoryCollectionViewCell
            cell.setupCategory(category: categories[indexPath.row])
            return cell
        case popularCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishPortraitCollectionViewCell.identifier, for: indexPath)as! DishPortraitCollectionViewCell
            cell.setup(dish: populars[indexPath.row])
            return cell
        case specialCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishLandscapeCollectionViewCell.identifier, for: indexPath)as! DishLandscapeCollectionViewCell
            cell.setup(dish: specials[indexPath.row])
            return cell
        default:
            return UICollectionViewCell()
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == categoryCollectionView {
            let controller = ListDishesViewController.instantiate()
            
            navigationController?.pushViewController(controller, animated: true)
            
            controller.category = categories[indexPath.row]
        }else {
            let controller = DishDetailViewController.instantiate()
            controller.dish = collectionView == popularCollectionView ? populars[indexPath.row] : specials[indexPath.row]
            navigationController?.pushViewController(controller, animated: true)
        }
    }
}
