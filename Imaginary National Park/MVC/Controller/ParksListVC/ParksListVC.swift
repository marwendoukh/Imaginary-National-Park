//
//  ParksListVC.swift
//  Imaginary National Park
//
//  Created by Marwen Doukh on 07.01.20.
//  Copyright © 2020 Marwen Doukh. All rights reserved.
//

import UIKit

class ParksListVC: BaseViewController {
    
    // UI elements
    let parkChoicesSegmentedControl: UISegmentedControl = {
        // "all" and "top 5" localized
        let items = ["ParksListVC.segmentedControl.all".localized, "ParksListVC.segmentedControl.top5".localized]
        let segmentedControl = UISegmentedControl(items: items)
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        segmentedControl.selectedSegmentIndex = 0
        return segmentedControl
    }()
    
    let parksTableview: UITableView = {
        let tableview = UITableView()
        tableview.register(ParkTableviewCell.self, forCellReuseIdentifier: ParkTableviewCell.cellId)
        tableview.translatesAutoresizingMaskIntoConstraints = false
        return tableview
    }()
    
    // list of parks
    var parksList: [Park] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set white background of the view controller
        view.backgroundColor = .white
        // set tableview delegates
        parksTableview.delegate = self
        parksTableview.dataSource = self
        // automatic tableviewCell height
        parksTableview.estimatedRowHeight = 150
        parksTableview.rowHeight = UITableViewAutomaticDimension
        // autolayout of UI components
        setupViews()
        // fetch parks list from WS
        getParksListWS()
        
    }

}
