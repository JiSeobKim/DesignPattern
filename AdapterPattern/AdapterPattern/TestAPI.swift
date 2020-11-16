//
//  TestAPI.swift
//  AdapterPattern
//
//  Created by kimjiseob on 11/16/20.
//

import Foundation
import UIKit

class TestAPI {
    
    func getTest<T: NetworkTest>(vc: T, method: String) {
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            let dict: NSDictionary = [
                "key2":"value2"
            ]
            
            vc.didFinishNetwork(dict: dict)
        }
    }
}


protocol NetworkTest {
    func didFinishNetwork(dict: NSDictionary)
}

