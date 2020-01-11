//
//  ParksListVC+Tableview.swift
//  Imaginary National Park
//
//  Created by Marwen Doukh on 09.01.20.
//  Copyright © 2020 Marwen Doukh. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

extension ParksListVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.parksList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ParkTableviewCell.cellId, for: indexPath) as? ParkTableviewCell
        let park = parksList[indexPath.row]
        
        // populate cell data
        populateData(cell: cell, park: park)
        
        
        return cell ?? UITableViewCell()
    }
    
    // populate cell data
    
    func populateData(cell: ParkTableviewCell?, park: Park) {
        // load park icon from URL (park.thumb)
        Alamofire.request(park.thumb ?? "").responseImage { response in
            if let image = response.result.value {
                cell?.iconImageView.image = image
            }
        }
        
        // title
        cell?.titleLabel.text = park.title
        // short description
        cell?.shortDescriptionLabel.text = park.shortDescription
        // available till
        cell?.availableTillLabel.text = park.endDate // TODO : format date
        // price
        cell?.priceLabel.text = park.price // TODO: format money
        
    }
    
    
}
