//
//  ParkDetailsVC+WS.swift
//  Imaginary National Park
//
//  Created by Marwen Doukh on 11.01.20.
//  Copyright © 2020 Marwen Doukh. All rights reserved.
//

import UIKit

extension ParkDetailsVC {
    
    // get park details
    func parkDetailsWS(parkId: Int?) {
        
        // show loader
        self.showLoader()
        // call WS
        ParkDetailsWS.parkDetailsWS(parkId: parkId) { (park) in
            
            debugPrint("park details WS finished")
            // hide loader
            self.hideLoader()
            
            // check if parks is not nil or a problem occured when fetching data from the Web service
            if let park = park {
                self.park = park
                self.updateViewData()
            } else {
                // error occured while retriving data from the WS ==> so show an alert
                self.showAlertWithMessage(title: "", buttonTitle: "BaseViewController.alert.ok".localized, message: "BaseViewController.alert.errorOccuredWS".localized)
            }
            
        }
    }
    
    // get park contact informations
    func contactInformationsWS() {
        
        // show loader
        self.showLoader()
        // call WS
        ParkDetailsWS.contactInformations { (contactInformation) in
            // hide loader
            self.hideLoader()
            // show a popup to the user containing park information
            self.showCallingInformationAlert(contactInformation: contactInformation)
        }
    }
    
}

