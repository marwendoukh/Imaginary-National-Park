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
        parkChoicesSegmentedControl.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        parkChoicesSegmentedControl.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        parkChoicesSegmentedControl.widthAnchor.constraint(equalTo: self.view.widthAnchor, constant: -20).isActive = true
        parkChoicesSegmentedControl.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        // tableview that contains the list of parks
        self.view.addSubview(parksTableview)
        parksTableview.topAnchor.constraint(equalTo: parkChoicesSegmentedControl.bottomAnchor, constant: 10).isActive = true
        parksTableview.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        parksTableview.widthAnchor.constraint(equalTo: self.view.widthAnchor, constant: -20).isActive = true
        parksTableview.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }
}
