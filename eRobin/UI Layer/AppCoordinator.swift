//
//  AppCoordinator.swift
//  eRobin
//
//  Created by Milos Otasevic on 26/10/2020.
//  Copyright © 2020 Milos Otasevic. All rights reserved.
//

import UIKit

class AppCoordinator{
    let dependencies = AppDependenciesContainer()
    let window: UIWindow
    
    init(window: UIWindow = UIWindow(frame: UIScreen.main.bounds)){
        self.window = window
    }
    
    func start(){
        self.setLoginVC()
    }
    
    func setLoginVC(){
        let loginVC = LoginViewController(dataSource: LoginVCDataSource())
        loginVC.view.backgroundColor = UIColor.red
        self.window.rootViewController = loginVC
        self.window.makeKeyAndVisible()
    }
}//class
