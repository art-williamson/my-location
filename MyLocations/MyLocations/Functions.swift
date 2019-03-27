//
//  Functions.swift
//  MyLocations
//
//  Created by Art Williamson on 3/27/19.
//  Copyright © 2019 Art Williamson. All rights reserved.
//

import Foundation

func afterDelay(_ seconds: Double, run: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: run)
}
