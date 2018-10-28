//
//  AppDataManager.swift
//  Bus
//
//  Created by Lazar Pešić on 10/21/18.
//  Copyright © 2018 Lazar Pešić. All rights reserved.
//

import RxSwift

class AppDataManager {
    static let shared = AppDataManager()
    fileprivate init(){}
    
    fileprivate let api = ApiHelper.shared
    fileprivate let database = DatabaseHelper.shared
    
}
