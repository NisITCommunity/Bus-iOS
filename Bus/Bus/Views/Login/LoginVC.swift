//
//  LoginVC.swift
//  Bus
//
//  Created by Lazar Pešić on 10/28/18.
//  Copyright © 2018 Lazar Pešić. All rights reserved.
//

import RxSwift
import RxCocoa

class LoginVC: UIViewController {
    @IBOutlet weak var addressTF: UITextField!
    @IBOutlet weak var submitBtn: UIButton!
    
    fileprivate let viewModel = LoginVM()
    fileprivate var disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    fileprivate func setupViews(){
        submitBtn.rx.tap.subscribe({ _ in
            AppDelegate.shared.rootViewController.showRegisterViewController()
        }).disposed(by: disposeBag)
    }
}
