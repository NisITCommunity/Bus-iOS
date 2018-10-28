//
//  RootViewController.swift
//  Bus
//
//  Created by Lazar Pešić on 10/28/18.
//  Copyright © 2018 Lazar Pešić. All rights reserved.
//

import RxSwift
import RxCocoa

class RootVC: UIViewController {
    fileprivate lazy var loginVC: LoginVC = {
        var controller = getUIStoryboard(storyboardName: "Login").instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
        self.addViewControllerAsChildViewController(childViewController: controller, container: self.view)
        return controller
    }()
    
    fileprivate lazy var registerVC: RegisterVC = {
        var controller = getUIStoryboard(storyboardName: "Register").instantiateViewController(withIdentifier: "RegisterVC") as! RegisterVC
        self.addViewControllerAsChildViewController(childViewController: controller, container: self.view)
        return controller
    }()
    
    fileprivate lazy var mainVC: MainVC = {
        var controller = getUIStoryboard(storyboardName: "Main").instantiateViewController(withIdentifier: "MainVC") as! MainVC
        self.addViewControllerAsChildViewController(childViewController: controller, container: self.view)
        return controller
    }()
    
    fileprivate let viewModel = RootVM()
    fileprivate var disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginVC.view.isHidden = false
    }
    
    func showRegisterViewController(){
        loginVC.view.isHidden = true
        registerVC.view.isHidden = false
    }
    
    func showMainViewController(){
        removeViewControllerAsChildViewController(childViewController: loginVC)
        removeViewControllerAsChildViewController(childViewController: registerVC)
        mainVC.view.isHidden = false
    }
}
