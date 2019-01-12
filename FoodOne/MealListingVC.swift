//
//  MealListingVC.swift
//  FoodOne
//
//  Created by Hassan Ahmed on 07/01/2019.
//  Copyright © 2019 Hassan Ahmed. All rights reserved.
//

import UIKit

class MealListingVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!

    var meals = [Meal]()
    
    static func instantiate() -> MealListingVC? {
        return Storyboard.Meal.viewController(withIdentifier: "MealListingVC") as? MealListingVC
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.hidesBackButton = true
        
        meals.append(Meal(name: "Pizza", description: "Very scrumptious and delicious thing to eat.", image: "pizza", price: 2.34))
        meals.append(Meal(name: "Pasta", description: "An italian food with great no of variety.", image: "pasta", price: 3.44))
        meals.append(Meal(name: "Sandwich", description: "A light meal usually for tea.", image: "sandwich", price: 2.00))
        
        self.tableView.reloadData()
    }    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = MealDetailVC.instantiate() {
            vc.meal = meals[indexPath.row]
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.meals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MealCell") as! MealCell
        cell.meal = self.meals[indexPath.row]
        return cell
    }
}
