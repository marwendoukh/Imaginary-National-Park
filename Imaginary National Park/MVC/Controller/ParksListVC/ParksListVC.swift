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
        
        let segmentedControl = UISegmentedControl(items: ParksType.allTitles)
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.addTarget(self, action: #selector(changeParksType(sender:)), for: .valueChanged)
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
        
        // set tableview delegates
        parksTableview.delegate = self
        parksTableview.dataSource = self
        // automatic tableviewCell height
        parksTableview.estimatedRowHeight = 150
        parksTableview.rowHeight = UITableViewAutomaticDimension
        // autolayout of UI components
        setupViews()
        // fetch parks list from WS
        getParksListWS(parkType: .all)
        
    }
    
    @objc func changeParksType(sender: UISegmentedControl) {
       
        let parkType = ParksType.initFromInt(sender.selectedSegmentIndex)
        getParksListWS(parkType: parkType)
    }

}
