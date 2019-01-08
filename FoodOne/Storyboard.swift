//
//  Storyboard.swift
//  FoodOne
//
//  Created by Hassan Ahmed on 08/01/2019.
//  Copyright © 2019 Hassan Ahmed. All rights reserved.
//

import Foundation
import UIKit

enum Storyboard: String {
    case Main, Meal
    
    var instance: UIStoryboard {
        return UIStoryboard(name: self.rawValue, bundle: nil)
    }
    
    // Instantiates the default initial
    // viewcontroller for current storybaord
    func initialViewController() -> UIViewController? {
        return self.instance.instantiateInitialViewController()
    }
    
    // Instantiates the viewcontroller with the given
    // identifier.
    func viewController(withIdentifier name: String) -> UIViewController? {
        return self.instance.instantiateViewController(withIdentifier: name)
    }
}
