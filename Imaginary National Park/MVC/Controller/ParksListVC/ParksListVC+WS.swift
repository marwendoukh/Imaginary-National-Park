//
//  ParksListVC+WS.swift
//  Imaginary National Park
//
//  Created by Marwen Doukh on 08.01.20.
//  Copyright © 2020 Marwen Doukh. All rights reserved.
//

import UIKit
import Alamofire

extension ParksListVC {
    
    func getParksListWS(parkType: ParksType) {
        
        debugPrint("start fetching WS data ...")
        // show loader
        showLoader()
        ParksListWS.parksWS(parksTypeUrl: parkType.wsUrl, completion: { (parks) in
            
            debugPrint("WS finished with \(parks?.count ?? 0) elements")
            // hide loader
            self.hideLoader()
            // check if parks is not nil or a problem occured when fetching data from the Web service
            if let parks = parks {
                self.parksList = parks
                self.parksTableview.reloadData()
            } else {
                // error occured while retriving data from the WS ==> so show an alert
                self.showAlertWithMessage(title: "", buttonTitle: "BaseViewController.alert.ok".localized, message: "BaseViewController.alert.errorOccuredWS".localized)
            }
            
        })
    }
}
