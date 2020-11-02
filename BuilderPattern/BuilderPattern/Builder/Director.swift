//
//  Director.swift
//  BuilderPattern
//
//  Created by kimjiseob on 2020/11/02.
//


import UIKit

class ButtonDirector {
    
    private static func makePayBuilder() -> ButtonBuilder {
        let titleColor = UIColor(red: 1, green: 192/255, blue: 0, alpha: 1)
        let highLightColor = titleColor.withAlphaComponent(0.4)
        let bgColor = UIColor(red: 51/255, green: 59/255, blue: 67/255, alpha: 1)
        let font = UIFont.boldSystemFont(ofSize: 17)
        let radius: CGFloat = 8
        
        let screenFrame = UIScreen.main.bounds
        let screenSize = screenFrame.size
        let margin: CGFloat = 12.0
        let height: CGFloat = 45.0
        let size = CGSize(width: screenSize.width - (margin * 2), height: height)
        let point = CGPoint(x: margin, y: screenSize.height - height - (margin * 2))
        let frame = CGRect(origin: point, size: size)
        
        
        
        let builder = ButtonConcreteBuilder()
            .setBGColor(bgColor)
            .setTitleColor(titleColor)
            .setTitleHighlightedColor(highLightColor)
            .setFont(font)
            .setFrame(frame)
            .setRadius(radius)
        
        return builder
    }
    
    static func makePayButton(title: String) -> UIButton {
        
        let builder = makePayBuilder().setTitle(title)
        
        return builder.product
    }
    
    static func makeTogetherButton() -> UIButton {
        let title = "같이 결제로 이동"
        let color = UIColor(red: 1, green: 192/255, blue: 0, alpha: 1)
        
        let screenFrame = UIScreen.main.bounds
        let screenSize = screenFrame.size
        let size = CGSize(width: 100, height: 30)
        let position = CGPoint(x: screenSize.width - size.width - 12, y: 54)
        let frame = CGRect(origin: position, size: size)
        
        let font = UIFont.boldSystemFont(ofSize: 12)
        
        let builder = ButtonConcreteBuilder()
            .setFont(font)
            .setFrame(frame)
            .setTitle(title)
            .setTitleColor(color)
            .setBolder(color: color, width: 2)
            .setRadius(size.height / 2)
            .setTitleHighlightedColor(color.withAlphaComponent(0.7))
        
        return builder.product
    }
}
