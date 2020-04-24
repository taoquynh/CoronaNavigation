//
//  GraphicViewController.swift
//  Corona
//
//  Created by Taof on 4/21/20.
//  Copyright © 2020 taoquynh. All rights reserved.
//

import UIKit

class GraphicViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var vietnamButton: UIButton!
    @IBOutlet weak var thegioiButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Số liệu Corona"
        
        let button = UIBarButtonItem(barButtonSystemItem: .organize, target: self, action: #selector(goBookmark))
        self.navigationItem.rightBarButtonItem = button
        
        vietnamButton.layer.cornerRadius = 5
        thegioiButton.layer.cornerRadius = 5
        
        // đặt largeTitle cho navigationBar, hiển thị phần title sẽ to hơn
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.tintColor = .red
    }
    
    override func viewDidAppear(_ animated: Bool) {
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    @objc func goBookmark(){
        let mapVC = MapViewController()
        self.navigationController?.pushViewController(mapVC, animated: true)
    }

    @IBAction func goVietNam(_ sender: Any) {
        let vietnamVC = VietnamViewController()
        self.navigationController?.pushViewController(vietnamVC, animated: true)
    }
    
    @IBAction func goTheWorld(_ sender: Any) {
        let theworldVC = TheWorldViewController()
        self.navigationController?.pushViewController(theworldVC, animated: true)
    }
    
}
