//
//  ViewController.swift
//  AdapterPattern
//
//  Created by kimjiseob on 11/16/20.
//

import UIKit


enum NetworkCase: Int {
    case getHotplaceList
    case postLogin
}

class ViewController: UIViewController {
    
    private var neoAdapter: NeoAdapterAPI?
    
    
    var completeHandler: ((NSDictionary)->())?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.neoAdapter = NeoAdapterAPI.shared
        self.postLogin()
        
    }
    
    
    private func getList() {
        let type:NetworkCase = .getHotplaceList
        let method: Method = .get
        let queryParam: NSDictionary = [
            "areaId" : 357,
            "hpYn" : true
        ]
        
        self.neoAdapter?.request(type: type.rawValue, method: method, queryParam: queryParam, bodyParam: nil, completeHandler: { (dict) in
            
            guard let dic = dict else { return }
            print(dic)
            
        })
    }
    
    private func postLogin() {
        let type:NetworkCase = .postLogin
        let method: Method = .post
        let bodyParam: NSDictionary = [
            "id" : "jiseob",
            "pass" : "1234"
        ]
        
        self.neoAdapter?.request(type: type.rawValue, method: method, queryParam: nil, bodyParam: bodyParam, completeHandler: { (dict) in
            guard let dic = dict else { return }
            print(dic)
        })
    }
}

