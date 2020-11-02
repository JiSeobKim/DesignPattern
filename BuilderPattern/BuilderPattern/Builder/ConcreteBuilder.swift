//
//  ConcreteBuilder.swift
//  BuilderPattern
//
//  Created by kimjiseob on 2020/11/02.
//

import UIKit

class ButtonConcreteBuilder: ButtonBuilder {
    var product = UIButton()
    
    func setTitle(_ title: String) -> ButtonBuilder {
        self.product.setTitle(title, for: .normal)
        return self
    }
    
    func setTitleColor(_ color: UIColor) -> ButtonBuilder {
        self.product.setTitleColor(color, for: .normal)
        return self
    }
    
    func setBGColor(_ color: UIColor) -> ButtonBuilder {
        self.product.backgroundColor = color
        return self
    }
    
    func setFont(_ font: UIFont) -> ButtonBuilder {
        self.product.titleLabel?.font = font
        return self
    }
    
    func setFrame(_ frame: CGRect) -> ButtonBuilder {
        self.product.frame = frame
        return self
    }
    
    func setRadius(_ radius: CGFloat) -> ButtonBuilder {
        self.product.layer.cornerRadius = radius
        return self
    }
    
    func setTitleHighlightedColor(_ color: UIColor) -> ButtonBuilder {
        self.product.setTitleColor(color, for: .highlighted)
        return self
    }
    func setBolder(color: UIColor, width: CGFloat) -> ButtonBuilder {
        self.product.layer.borderWidth = width
        self.product.layer.borderColor = color.cgColor
        return self
    }
}
