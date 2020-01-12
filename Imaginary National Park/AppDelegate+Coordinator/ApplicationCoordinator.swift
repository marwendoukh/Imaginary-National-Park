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
    let mainNavigationController: SplitVC
    let parksListVCCoordinator: ParksListVCCoordinator
    
    init(window: UIWindow) {
        self.window = window
        mainNavigationController = SplitVC()
        
        // parksList coordinator
        parksListVCCoordinator = ParksListVCCoordinator(presenter: mainNavigationController)
        
        let parkListVC = ParksListVC()
        // set the delegate (used in tableview selection)
        parkListVC.delegate = parksListVCCoordinator
        let masterVC = UINavigationController(rootViewController: parkListVC)
        let detailVC = UINavigationController(rootViewController: NothingSelectedVC())
        mainNavigationController.viewControllers = [masterVC, detailVC]
        
    }
    
    func start() {
        window.rootViewController = mainNavigationController
        window.makeKeyAndVisible()
        parksListVCCoordinator.start()
    }
}
