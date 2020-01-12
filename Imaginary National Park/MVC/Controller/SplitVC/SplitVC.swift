//
//  SplitVC.swift
//  Imaginary National Park
//
//  Created by Marwen Doukh on 12.01.20.
//  Copyright © 2020 Marwen Doukh. All rights reserved.
//

import UIKit

class SplitVC: UISplitViewController, UISplitViewControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
    }
    
    func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController: UIViewController, onto primaryViewController: UIViewController) -> Bool {
        return true
    }
    
}
