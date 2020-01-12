//
//  ParkDetailsVC+Coordinator.swift
//  Imaginary National Park
//
//  Created by Marwen Doukh on 11.01.20.
//  Copyright © 2020 Marwen Doukh. All rights reserved.
//

import UIKit

class ParkDetailsVCCoordinator: Coordinator {
    
    private let presenter: UISplitViewController
    private var parkDetailsVC: ParkDetailsVC?
    private var idPark: Int?
    
    init(presenter: SplitVC, idPark: Int?) {
        self.presenter = presenter
        self.idPark = idPark
    }
    
    func start() {
        
        let parkDetailsVC = ParkDetailsVC()
        parkDetailsVC.idPark = idPark
        presenter.showDetailViewController(UINavigationController(rootViewController: parkDetailsVC), sender: self)
        self.parkDetailsVC = parkDetailsVC
    }
    
}
