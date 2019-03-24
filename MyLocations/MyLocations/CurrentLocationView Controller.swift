//
//  FirstViewController.swift
//  MyLocations
//
//  Created by Art Williamson on 3/24/19.
//  Copyright © 2019 Art Williamson. All rights reserved.
//

import UIKit

class CurrentLocationViewController: UIViewController {

    //MARK: Outlets

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var latitudeLabel: UILabel!
    @IBOutlet weak var longitudeLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var tagButton: UIButton!
    @IBOutlet weak var getButton: UIButton!

    @IBAction func getLocation() {

    }
    
    //MARK: Overrides

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

