//
//  MapViewController.swift
//  Corona
//
//  Created by Taof on 4/21/20.
//  Copyright © 2020 taoquynh. All rights reserved.
//

import UIKit

class MapViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "Map Covid"
        
        let button = UIBarButtonItem(barButtonSystemItem: .bookmarks, target: self, action: #selector(soLieu))
        self.navigationItem.rightBarButtonItem = button
        
        navigationController?.navigationBar.prefersLargeTitles = false
        
        // transparent navigationBar
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
    }

    @objc func soLieu(){
        let dataVC = DataViewController()
        self.navigationController?.pushViewController(dataVC, animated: true)
    }

}
