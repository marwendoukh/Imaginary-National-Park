//
//  ParksListVCCoordinator.swift
//  Imaginary National Park
//
//  Created by Marwen Doukh on 11.01.20.
//  Copyright © 2020 Marwen Doukh. All rights reserved.
//

import UIKit

class ParksListVCCoordinator: Coordinator, ParksListVCDelegate {
    
    private let presenter: UINavigationController
    private var parkListVC: ParksListVC?
    
    init(presenter: UINavigationController) {
        self.presenter = presenter
    }
    
    func start() {
        
        let parkListVC = ParksListVC()
        parkListVC.delegate = self
        presenter.pushViewController(parkListVC, animated: true)
        self.parkListVC = parkListVC
    }
    
    // VC delegate , used when clicked on tableviewCell
    func didSelectPark(id: Int?) {
        let parkDetailsVCCoordinator = ParkDetailsVCCoordinator(presenter: presenter, idPark: id)
        parkDetailsVCCoordinator.start()
    }
    
}

protocol ParksListVCDelegate: class {
    func didSelectPark(id: Int?)
}
