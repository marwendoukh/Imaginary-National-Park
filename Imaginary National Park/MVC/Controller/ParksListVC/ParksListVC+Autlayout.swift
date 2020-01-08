//
//  ParksListVC+Autlayout.swift
//  Imaginary National Park
//
//  Created by Marwen Doukh on 07.01.20.
//  Copyright © 2020 Marwen Doukh. All rights reserved.
//

import UIKit

extension ParksListVC {
    
    // autolayout of UI components
    func setupViews() {
        // segmented control that contains (all parks, top5)
        self.view.addSubview(parkChoicesSegmentedControl)
        parkChoicesSegmentedControl.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        parkChoicesSegmentedControl.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        parkChoicesSegmentedControl.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        parkChoicesSegmentedControl.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
}
