//
//  ParksListVC.swift
//  Imaginary National Park
//
//  Created by Marwen Doukh on 07.01.20.
//  Copyright © 2020 Marwen Doukh. All rights reserved.
//

import UIKit

class ParksListVC: UIViewController {
    
    let parkChoicesSegmentedControl: UISegmentedControl = {
        // "all" and "top 5" localized
        let items = ["ParksListVC.segmentedControl.all".localized, "ParksListVC.segmentedControl.top5".localized]
        let segmentedControl = UISegmentedControl(items: items)
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        segmentedControl.selectedSegmentIndex = 0
        return segmentedControl
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        // autolayout of UI components
        setupViews()
        
    }

}
