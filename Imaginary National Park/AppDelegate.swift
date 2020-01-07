//
//  AppDelegate.swift
//  Imaginary National Park
//
//  Created by Marwen Doukh on 06.01.20.
//  Copyright © 2020 Marwen Doukh. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let homeViewController = ParksListVC()
        window!.rootViewController = homeViewController
        window!.makeKeyAndVisible()
        
        return true
    }

}

