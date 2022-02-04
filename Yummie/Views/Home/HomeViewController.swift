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

    var categories: [DishCategory] = [
        .init(id: "id1", name: "American Dish", image: "Photo by Lisa Fotios from Pexels: https://www.pexels.com/photo/selective-focus-photography-of-pasta-with-tomato-and-basil-1279330/"),
            .init(id: "id1", name: "American Dish 2", image: "Photo by Lisa Fotios from Pexels: https://www.pexels.com/photo/selective-focus-photography-of-pasta-with-tomato-and-basil-1279330/"),
            .init(id: "id1", name: "American Dish 3", image: "Photo by Lisa Fotios from Pexels: https://www.pexels.com/photo/selective-focus-photography-of-pasta-with-tomato-and-basil-1279330/"),
            .init(id: "id1", name: "American Dish 4", image: "Photo by Lisa Fotios from Pexels: https://www.pexels.com/photo/selective-focus-photography-of-pasta-with-tomato-and-basil-1279330/"),
            .init(id: "id1", name: "American Dish 5", image: "Photo by Lisa Fotios from Pexels: https://www.pexels.com/photo/selective-focus-photography-of-pasta-with-tomato-and-basil-1279330/"),
            .init(id: "id1", name: "American Dish 6", image: "Photo by Lisa Fotios from Pexels: https://www.pexels.com/photo/selective-focus-photography-of-pasta-with-tomato-and-basil-1279330/"),
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
registerCell()
    }
    private func registerCell() {
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        popularCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
    }
}
// MARK: ------------Exetensions-------------
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath)as! CategoryCollectionViewCell
        cell.setupCategory(category: categories[indexPath.row])
        return cell
    }
}
