//
//  ApplicationCoordinator.swift
//  Imaginary National Park
//
//  Created by Marwen Doukh on 11.01.20.
//  Copyright © 2020 Marwen Doukh. All rights reserved.
//

import UIKit

class ApplicationCoordinator: Coordinator {
  
    let window: UIWindow
    let mainNavigationController: UINavigationController
    let parksListVCCoordinator: ParksListVCCoordinator

    init(window: UIWindow) { //4
        self.window = window
        mainNavigationController = UINavigationController()
        mainNavigationController.navigationBar.isTranslucent = true
        
        // parksList VC
        parksListVCCoordinator = ParksListVCCoordinator(presenter: mainNavigationController)
       
    }
    
    func start() {
        window.rootViewController = mainNavigationController
        window.makeKeyAndVisible()
        parksListVCCoordinator.start()
    }
}
