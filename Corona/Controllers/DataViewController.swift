//
//  DataViewController.swift
//  Corona
//
//  Created by Taof on 4/21/20.
//  Copyright © 2020 taoquynh. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {
    
    @IBOutlet weak var homeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeButton.layer.cornerRadius = 5
        
        let backButton = UIBarButtonItem(title: "", style: .plain, target: navigationController, action: nil)
        navigationItem.leftBarButtonItem = backButton
    }
    
    @IBAction func backHome(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
