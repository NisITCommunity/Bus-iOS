//
//  AppDelegate+RootViewController.swift
//  Bus
//
//  Created by Lazar Pešić on 10/28/18.
//  Copyright © 2018 Lazar Pešić. All rights reserved.
//

import Foundation
import UIKit

extension AppDelegate {
    static var shared: AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
    
    var rootViewController: RootVC {
        return window!.rootViewController as! RootVC
    }
}
