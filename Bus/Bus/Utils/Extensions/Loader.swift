//
//  UIStoryboard.swift
//  Bus
//
//  Created by Lazar Pešić on 10/28/18.
//  Copyright © 2018 Lazar Pešić. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func getUIStoryboard(storyboardName: String) -> UIStoryboard {
        return UIStoryboard(name: storyboardName, bundle: nil)
    }

    func addViewControllerAsChildViewController(childViewController: UIViewController, container: UIView){
        addChild(childViewController)
        childViewController.view.frame = container.bounds
        container.addSubview(childViewController.view)
        childViewController.didMove(toParent: self)
    }

    func removeViewControllerAsChildViewController(childViewController: UIViewController) {
        childViewController.willMove(toParent: nil)
        childViewController.view.removeFromSuperview()
        childViewController.removeFromParent()
    }
}
