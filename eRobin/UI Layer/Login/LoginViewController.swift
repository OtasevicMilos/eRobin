//
//  LoginViewController.swift
//  eRobin
//
//  Created by Milos Otasevic on 26/10/2020.
//  Copyright © 2020 Milos Otasevic. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    let dataSource: LoginVCDataSource
    
    init(dataSource: LoginVCDataSource){
        self.dataSource = dataSource
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {fatalError("init")}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setView()
    }
    
    private func setView(){
        self.view.setBackgroundGradient()
    }
}//class
