//
//  MyTabBarController.swift
//  MyLocations
//
//  Created by Joe Lucero on 1/21/17.
//  Copyright © 2017 Joe Lucero. All rights reserved.
//

import UIKit

class MyTabBarController: UITabBarController {

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override var childViewControllerForStatusBarStyle: UIViewController? {
        return nil
    }

}
