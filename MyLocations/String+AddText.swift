//
//  String+AddText.swift
//  MyLocations
//
//  Created by Joe Lucero on 1/21/17.
//  Copyright © 2017 Joe Lucero. All rights reserved.
//

import Foundation

extension String {
    mutating func add(text: String?,
                      separatedBy separator: String = "") {
        if let text = text {
            if !isEmpty {
                self += separator
            }
            self += text
        }
    }
}
