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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let parkId = parksList[indexPath.row].id
        delegate?.didSelectPark(id: parkId)
    }
    
    // populate cell data
    
    func populateData(cell: ParkTableviewCell?, park: Park) {
        
        // reset imageview
        cell?.iconImageView.image = UIImage()
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
        cell?.availableTillLabel.text = "ParksListVC.label.availableTill".localized + ": " + (park.endDate?.formatDate() ?? "")
        // price
        cell?.priceLabel.text = (park.price ?? "") + " €"
        
    }
    
    
}
