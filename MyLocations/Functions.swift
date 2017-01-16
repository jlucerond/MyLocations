//
//  Functions.swift
//  MyLocations
//
//  Created by Joe Lucero on 1/16/17.
//  Copyright © 2017 Joe Lucero. All rights reserved.
//

import Foundation
import Dispatch

func afterDelay(_ seconds: Double, closure: @escaping() -> ()) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds,
                                  execute: closure)
}
