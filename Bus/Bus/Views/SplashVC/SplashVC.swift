//
//  ViewController.swift
//  Bus
//
//  Created by Lazar Pešić on 10/21/18.
//  Copyright © 2018 Lazar Pešić. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class SplashVC: UIViewController {

    fileprivate var disposeBag = DisposeBag()
    fileprivate var viewModel = SplashViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    fileprivate func setupViews(){
    
    }
}

