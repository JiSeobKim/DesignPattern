//
//  ViewController.swift
//  BuilderPattern
//
//  Created by kimjiseob on 2020/11/02.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.addButtons()
//        self.addMultiPayButton()
    }
    
    private func addButtons() {
        let singleButton = ButtonDirector.makePayButton(title: "결제하기")
        let togetherButton = ButtonDirector.makeTogetherButton()
        
        self.view.addSubview(singleButton)
        self.view.addSubview(togetherButton)
    }
    
    private func addMultiPayButton() {
        
        let range = 1...10
        
        for row in range {
            let button = ButtonDirector.makePayButton(title: row.description)
            button.frame.origin.y -= (button.frame.height + 12) * CGFloat(row)
            self.view.addSubview(button)
        }
    }
}

