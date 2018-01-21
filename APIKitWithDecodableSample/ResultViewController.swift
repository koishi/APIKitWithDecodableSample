//
//  ResultViewController.swift
//  APIKitWithDecodableSample
//
//  Created by 大石弘一郎 on 2018/01/21.
//  Copyright © 2018年 SuguruKishimoto. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var api: Api?

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let api = api else {
            return
        }
        title = api.name
        api.closure({self.label.text = $0}, {self.label.text = $0})
    }

}
