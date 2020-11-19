//
//  ViewController.swift
//  BlogFactoryPattern
//
//  Created by kimjiseob on 2020/11/19.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let items: [String] = (0...10).map {
            return $0.description
        }
        
        let tbView = TableListFactory().create(frame: self.view.bounds, items: items)
        self.view.addSubview(tbView.view)
        
    }
}

