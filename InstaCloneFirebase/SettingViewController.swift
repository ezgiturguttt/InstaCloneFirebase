//
//  SettingViewController.swift
//  InstaCloneFirebase
//
//  Created by Ezgı Mac on 21.03.2023.
//

import UIKit
import Firebase

class SettingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func logoutClicked(_ sender: Any) {
        
        do {
            try Auth.auth().signOut()
            self.performSegue(withIdentifier: "toViewController", sender: nil)
            
        } catch {
            print("error")
        }
    }
}
