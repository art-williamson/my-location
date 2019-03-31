//
//  String+AddText.swift
//  MyLocations
//
//  Created by Art Williamson on 3/31/19.
//  Copyright © 2019 Art Williamson. All rights reserved.
//

extension String {
    mutating func add(text: String?, separatedBy separator: String = "") {
        if let text = text {
            if !isEmpty {
                self += separator
            }
            self += text }
    }
}
