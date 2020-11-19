//
//  ListProduct.swift
//  BlogFactoryPattern
//
//  Created by kimjiseob on 2020/11/19.
//

import UIKit

protocol ListProduct {
    var view: UIView { get }
    func removeAll()
    func updateList(_ list: [String])
}
