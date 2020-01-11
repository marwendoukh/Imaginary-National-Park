//
//  ParksListWS.swift
//  Imaginary National Park
//
//  Created by Marwen Doukh on 08.01.20.
//  Copyright © 2020 Marwen Doukh. All rights reserved.
//

import UIKit
import Alamofire

struct ParksListWS {
    
    static func parksWS(parksTypeUrl: String, completion: @escaping ([Park]?) -> Void) {
     
        Alamofire.request(parksTypeUrl,
                          method: .get,
                          headers: Header.jsonHeader).response(completionHandler: { (response) in
                            
                            // decode the json response
                            let parks = try? JSONDecoder().decode([Park].self, from: response.data ?? Data())
                            completion(parks)
                            
        })
    }
}
