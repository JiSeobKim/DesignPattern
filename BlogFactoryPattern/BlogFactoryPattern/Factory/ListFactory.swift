//
//  ListFactory.swift
//  BlogFactoryPattern
//
//  Created by kimjiseob on 2020/11/19.
//

import UIKit



protocol ListFactory {
    func create(frame: CGRect, items: [String]) -> ListProduct
}

