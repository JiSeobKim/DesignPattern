//
//  TableListFactory.swift
//  BlogFactoryPattern
//
//  Created by kimjiseob on 2020/11/19.
//

import UIKit

class TableListFactory: ListFactory {
    func create(frame: CGRect, items: [String]) -> ListProduct {
        let product = TableListProduct(frame: frame)
        product.updateList(items)
        return product
    }
}
