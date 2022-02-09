import UIKit

class ListOrdersViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var order: [Order] = [
        .init(id: "id1", name: "Alandis Seals", dish: .init(id: "id1", name: "Turkey Sandwish", image: "https://images.pexels.com/photos/11101371/pexels-photo-11101371.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500", description: "This the best Chicken on earth", caloies: 1200)),
        .init(id: "id1", name: "Keundra Seals", dish: .init(id: "id1", name: "Pizza", image: "https://images.pexels.com/photos/2762942/pexels-photo-2762942.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500", description: "This the best Chicken on earth", caloies: 1000)),   .init(id: "id1", name: "Fred Seals", dish: .init(id: "id1", name: "Turkey Sandwish", image: "https://images.pexels.com/photos/11101371/pexels-photo-11101371.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500", description: "This the best Chicken on earth", caloies: 1600))
        
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

        registerCell()
        title = "Orders"
    }
    
    private func registerCell() {
        tableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }
  

}
extension ListOrdersViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        order.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier) as! DishListTableViewCell
        cell.setup(order: order[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instantiate()
        controller.dish = order[indexPath.row].dish
        navigationController?.pushViewController(controller, animated: true)
    }
    
    
    
}
