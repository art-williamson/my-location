//
//  LocationDetailsViewController.swift
//  MyLocations
//
//  Created by Art Williamson on 3/26/19.
//  Copyright © 2019 Art Williamson. All rights reserved.
//

import UIKit

class LocationDetailsViewController: UITableViewController {

    //MARK: Outlets

    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var latitudeLabel: UILabel!
    @IBOutlet weak var longitudeLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!

    // MARK:- Actions
    
    @IBAction func done() {
        navigationController?.popViewController(animated: true)
    }
    @IBAction func cancel() {
        navigationController?.popViewController(animated: true)
    }
}
