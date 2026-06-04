//
//  ViewController.swift
//  MoneyHashPayment
//
//  Created by ahmedsalemelzeiny on 11/27/2022.
//  Copyright (c) 2022 ahmedsalemelzeiny. All rights reserved.
//

import UIKit
import MoneyHash

class ViewController: UIViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        let moneyhashSDK = MoneyHashSDKBuilder.build()
        
        DispatchQueue.main.async {
            moneyhashSDK.renderForm(
                        on: self,
                        intentId: "ZB6pmkZ",
                        embedStyle: nil,
                        intentType: .payment
                    ) { res in
                        print(res)
                    }
                }
                
            }
}
