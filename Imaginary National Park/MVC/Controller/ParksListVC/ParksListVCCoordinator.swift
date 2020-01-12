//
//  ParksListVCCoordinator.swift
//  Imaginary National Park
//
//  Created by Marwen Doukh on 11.01.20.
//  Copyright © 2020 Marwen Doukh. All rights reserved.
//

import UIKit
//
//class SplitVC: UISplitViewController {
//
//}
//
//class SplitVCCoordinator: Coordinator, ParksListVCDelegate {
//
//     private let presenter: UISplitViewController
//    private var navigationController: UINavigationController
//    let parkListVc = ParksListVC()
//    init(presenter: UISplitViewController) {
//        self.presenter = presenter
//
//
//
//        navigationController = UINavigationController(rootViewController: parkListVc)
//        var rootViewController = navigationController
//        var detailViewController = ParkDetailsVC()
//        presenter.viewControllers = [rootViewController,UINavigationController(rootViewController: detailViewController)]
//    }
//
//    func start() {
//
//        //presenter.show(navigationController, sender: self)
//        if let p = navigationController.viewControllers.first as? ParksListVC {
//            p.delegate = self
//        }
//        presenter.show(navigationController, sender: self)
//    }
//
//
//    // VC delegate , used when clicked on tableviewCell
//    func didSelectPark(id: Int?) {
//        let parkDetailsVCCoordinator = ParkDetailsVCCoordinator(presenter: presenter, idPark: id)
//        parkDetailsVCCoordinator.start()
//    }
//
//
//}

class ParksListVCCoordinator: Coordinator, ParksListVCDelegate {
    
    private let presenter: SplitVC
    private var parkListVC: ParksListVC?
    
    init(presenter: SplitVC) {
        self.presenter = presenter
    }
    
    func start() {
        
        let parkListVC = ParksListVC()
        parkListVC.delegate = self
        //presenter.pushViewController(parkListVC, animated: true)
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
