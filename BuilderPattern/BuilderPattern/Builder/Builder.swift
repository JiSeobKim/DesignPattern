//
//  Builder.swift
//  BuilderPattern
//
//  Created by kimjiseob on 2020/11/02.
//

import UIKit

protocol ButtonBuilder {
    
    func setTitle(_ title: String) -> ButtonBuilder
    func setTitleColor(_ color: UIColor) -> ButtonBuilder
    func setBGColor(_ color: UIColor) -> ButtonBuilder
    func setFont(_ font: UIFont) -> ButtonBuilder
    func setFrame(_ frame: CGRect) -> ButtonBuilder
    func setRadius(_ radius: CGFloat) -> ButtonBuilder
    func setTitleHighlightedColor(_ color: UIColor) -> ButtonBuilder
    func setBolder(color: UIColor, width: CGFloat) -> ButtonBuilder
    
    func build() -> UIButton
}
