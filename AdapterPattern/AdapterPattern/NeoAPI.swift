//
//  NeoAPI.swift
//  AdapterPattern
//
//  Created by kimjiseob on 11/16/20.
//

import UIKit

class NeoAPI {
    
    func requestDefaultPacket(vc: NeoAdapterAvailable, setReuqestType: Int, method: String, dict: NSDictionary?) {
        
        // Bla Bla
        // ...
        // End Networking
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            vc.didFinishNetwork(dict: dict)
        }
    }
}
