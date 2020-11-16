//
//  NeoAdapterAPI.swift
//  AdapterPattern
//
//  Created by kimjiseob on 11/16/20.
//

import Foundation

protocol NeoAdapterAvailable {
    func didFinishNetwork(dict: NSDictionary?)
}

enum Method: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case delete = "DELETE"
}

class NeoAdapterAPI: NeoAdapterAvailable {
    
    // use singletone
    static var shared = NeoAdapterAPI.init()
    
    private var neoAPI: NeoAPI?
    private var handler: ((NSDictionary?)->())?
    
    private init() {
        self.neoAPI = NeoAPI()
    }
    
    func request(type: Int, method: Method, queryParam: NSDictionary?, bodyParam: NSDictionary?, completeHandler: ((NSDictionary?)->())?) {
        
        // CallBack 용
        let callBack = completeHandler
        self.handler = callBack
        
        var dic: NSDictionary?
        
        switch method {
        case .get, .put, .delete:
            dic = queryParam
        case .post:
            dic = bodyParam
        }
        
        neoAPI?.requestDefaultPacket(vc: self, setReuqestType: type, method: method.rawValue, dict: dic)
    }
    
    func didFinishNetwork(dict: NSDictionary?) {
        self.handler?(dict)
    }
}
