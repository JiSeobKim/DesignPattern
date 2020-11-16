//
//  ViewController.swift
//  AdapterPattern
//
//  Created by kimjiseob on 11/16/20.
//

import UIKit



class ViewController: UIViewController, NetworkTest {
    
    
    var completeHandler: ((NSDictionary)->())?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        testRun { dict in
            print("Plz \n \(dict)")
        }
    }
    
    
    private func testRun(hanlder: ((NSDictionary)->())?) {
        let a = hanlder
        
        self.completeHandler = a
        
        let api = TestAPI()
        api.getTest(vc: self, method: "GET")
        
    }


    func didFinishNetwork(dict: NSDictionary) {
        guard let handler = self.completeHandler else { return }
        
        handler(dict)
    }
}

