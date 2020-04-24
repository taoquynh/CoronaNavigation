//
//  RegisterViewController.swift
//  Corona
//
//  Created by Taof on 4/21/20.
//  Copyright © 2020 taoquynh. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func onRegister(_ sender: Any) {
        let graphicVC = GraphicViewController()
        let navigation = UINavigationController(rootViewController: graphicVC)
        navigation.modalPresentationStyle = .fullScreen
        self.present(navigation, animated: true, completion: nil)
    }
    
    @IBAction func backToLogin(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
