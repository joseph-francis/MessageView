//
//  TriangleView.swift
//  MessageView
//
//  Created by Joseph on 7/12/19.
//  Copyright © 2019 Joseph. All rights reserved.
//

import Foundation
import UIKit

internal class TriangleView : UIView {
    
    var direction: Direction = .bottom
    var color: UIColor = UIColor.lightGray
    
    init(frame: CGRect, direction: Direction, color: UIColor) {
        self.direction = direction
        self.color = color
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override public func draw(_ rect: CGRect) {
        
        guard let context = UIGraphicsGetCurrentContext() else { return }
        context.beginPath()
        
        switch direction {
        case .top:
            context.move(to: CGPoint(x: rect.minX, y: rect.maxY))
            context.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            context.addLine(to: CGPoint(x: (rect.maxX / 2.0), y: rect.minY))
            
        case .bottom:
            context.move(to: CGPoint.init(x: rect.minX, y: rect.minY))
            context.addLine(to: CGPoint.init(x: rect.maxX, y: rect.minY))
            context.addLine(to: CGPoint.init(x: rect.maxX/2.0, y: rect.maxY))
        }
        
        context.closePath()
        
        context.setFillColor(color.cgColor)
        context.fillPath()
    }
}
