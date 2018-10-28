//
//  RegisterVC.swift
//  Bus
//
//  Created by Lazar Pešić on 10/28/18.
//  Copyright © 2018 Lazar Pešić. All rights reserved.
//

import RxSwift
import RxCocoa

class RegisterVC: UIViewController {
    @IBOutlet weak var emailOrPasswordTF: UITextField!
    @IBOutlet weak var registerPasswordTF: UITextField!
    @IBOutlet weak var submitBtn: UIButton!
    
    fileprivate let viewModel = RegisterVM()
    fileprivate var disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    fileprivate func setupViews(){
        submitBtn.rx.tap.subscribe({ _ in
            AppDelegate.shared.rootViewController.showMainViewController()
        }).disposed(by: disposeBag)
    }
}
