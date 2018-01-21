//
//  ViewController.swift
//  APIKitWithDecodableSample
//
//  Created by SuguruKishimoto on 6/19/17.
//  Copyright © 2017 SuguruKishimoto. All rights reserved.
//

import UIKit
import APIKit

struct ApiDryrun {
    let name: String
    let closure: () -> Void
    let response: String
    let error: String
}

class ViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView! {
        didSet {
            tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
            tableView.dataSource = self
            tableView.delegate = self
            tableView.rowHeight = UITableViewAutomaticDimension
            tableView.estimatedRowHeight = 100.0
        }
    }

    private var sendFunctions = [Api]()
    typealias Api = (name: String, closure: () -> Void)

    override func viewDidLoad() {
        super.viewDidLoad()

        sendFunctions  = [makeSendFunctionForMypageTop(),
                          makeSendFunctionForGetGradeList()]
        tableView.reloadData()
    }

    func makeSendFunctionForMypageTop() -> Api {
        let request = StudyGearAPI.MypageTop(userId: "1")
        return (
            request.path,
            {Session.send(request) {
                switch $0 {
                case .success(let response):
                    print(response)
                case .failure(let error):
                    print(error)
                }
                }
        })
    }

    func makeSendFunctionForGetGradeList() -> Api {
        let request = StudyGearAPI.GetGradeList()
        return (
            request.path,
            {Session.send(StudyGearAPI.GetGradeList()) {
            switch $0 {
            case .success(let response):
                print(response)
            case .failure(let error):
                print(error)
            }
            }})
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

//        Session.send(StudyGearAPI.MypageTop(userId: "1")) {
//            switch $0 {
//            case .success(let response):
//                print(response)
//            case .failure(let error):
//                print(error)
//            }
//        }
//
//        Session.send(StudyGearAPI.GetGradeList()) { [weak self] result in
//            switch result {
//            case .success(let response):
//                print(response)
//            case .failure(let error):
//                print(error)
//            }
//        }
//
//        Session.send(StudyGearAPI.GetStamp()) {
//            switch $0 {
//            case .success(let response):
//                print(response)
//            case .failure(let error):
//                print(error)
//            }
//        }
//
//        Session.send(StudyGearAPI.GetTimeline(sort: nil, page: 1, size: nil)) {
//            switch $0 {
//            case .success(let response):
//                print(response)
//            case .failure(let error):
//                print(error)
//            }
//        }

    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sendFunctions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        configure(cell, api: sendFunctions[indexPath.row])
        return cell
    }

    private func configure(_ cell: UITableViewCell, api: Api) {
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.text = api.name
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let api = sendFunctions[indexPath.row]
        api.closure()
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
