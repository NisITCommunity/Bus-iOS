//
//  MainVC.swift
//  Bus
//
//  Created by Lazar Pešić on 10/28/18.
//  Copyright © 2018 Lazar Pešić. All rights reserved.
//

import RxSwift
import RxCocoa

class MainVC: UIViewController {
    
    fileprivate let viewModel = MainVM()
    fileprivate var disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
