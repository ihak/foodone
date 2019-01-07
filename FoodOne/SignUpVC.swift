//
//  SignUpVC.swift
//  FoodOne
//
//  Created by Hassan Ahmed on 07/01/2019.
//  Copyright © 2019 Hassan Ahmed. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Sign Up"
    }
    
    func validate() -> Bool {
        if name.text!.isEmpty || email.text!.isEmpty || password.text!.isEmpty {
            return false
        }
        return true
    }
    
    @IBAction func signUpTapped(sender: UIButton) {
        if validate() {
            self.performSegue(withIdentifier: "GoToMealListing", sender: nil)
        }
        else {
            let alert = UIAlertController(title: "Error", message: "Please provide name, email and password to sign up.", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
        }
    }
}
