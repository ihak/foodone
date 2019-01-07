//
//  MealCell.swift
//  FoodOne
//
//  Created by Hassan Ahmed on 07/01/2019.
//  Copyright © 2019 Hassan Ahmed. All rights reserved.
//

import UIKit

class MealCell: UITableViewCell {
    @IBOutlet weak var mealTitle: UILabel!
    @IBOutlet weak var mealImage: UIImageView!
    @IBOutlet weak var mealPrice: UILabel!
    
    var meal: Meal? {
        didSet {
            if let _ = meal {
                mealTitle.text = meal!.name
                mealImage.image = UIImage(named:meal!.image)
                mealPrice.text = "$\(meal!.price)"
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
