//
//  MyTabBarController.swift
//  MyLocations
//
//  Created by Art Williamson on 3/31/19.
//  Copyright © 2019 Art Williamson. All rights reserved.
//

import UIKit

class MyTabBarController: UITabBarController {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override var childForStatusBarStyle: UIViewController? {
        return nil
    }

}
