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

enum Method {
    case get
    case post
    case put
    case delete
}

class NeoAdapterAPI: NeoAdapterAvailable {
    
    // use singletone
    static var shared = NeoAdapterAPI.init()
    
    private var handler: ((NSDictionary?)->())?
    
    private init() {
        
    }
    
    func request(type: Int, method: Method, queryParam: NSDictionary?, bodyParam: NSDictionary?) {
        
    }
    
    func didFinishNetwork(dict: NSDictionary?) {
        self.handler?(dict)
    }
}
