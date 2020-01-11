//
//  ParksDetailsWS.swift
//  Imaginary National Park
//
//  Created by Marwen Doukh on 11.01.20.
//  Copyright © 2020 Marwen Doukh. All rights reserved.
//

import Foundation
import Alamofire

struct ParkDetailsWS {
    
    // get park details
    static func parkDetailsWS(parkId: Int?, completion: @escaping (Park?) -> Void) {
        
        let parkDetailsUrl = Route.parkDetailsUrl + "\(parkId ?? 0)/"
        
        Alamofire.request(parkDetailsUrl,
                          method: .get,
                          headers: Header.jsonHeader).response(completionHandler: { (response) in
                            
                            // decode the json response
                            let park = try? JSONDecoder().decode(Park.self, from: response.data ?? Data())
                            completion(park)
                            
                          })
    }
    
    // get contact informations
    static func contactInformations(completion: @escaping (ParkContactInformation?) -> Void) {
        
        Alamofire.request(Route.parkContactInformationUrl,
                          method: .get,
                          headers: Header.jsonHeader).response(completionHandler: { (response) in
                            
                            // decode the json response
                            let park = try? JSONDecoder().decode(ParkContactInformation.self, from: response.data ?? Data())
                            completion(park)
                            
                          })
    }
}
