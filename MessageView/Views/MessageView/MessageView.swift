//
//  MessageView.swift
//  MessageView
//
//  Created by Joseph on 7/12/19.
//  Copyright © 2019 Joseph. All rights reserved.
//

import Foundation
import UIKit

public final class MessageView: UIView { //Should it be final???
    
    fileprivate let padding: CGFloat = 10
    fileprivate let maxSize = CGSize.init(width: 268, height: CGFloat.greatestFiniteMagnitude)
    
    var titleLbl: UILabel = UILabel()
    
    fileprivate lazy var tailView: UIView = {
        let view = TriangleView(frame: CGRect.zero, direction: .bottom, color: contentBgColor)
        view.frame.size = CGSize.init(width: 20, height: 8)
        view.backgroundColor = UIColor.clear
        return view
    }()
    
    var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    var font: UIFont = UIFont.systemFont(ofSize: 14.0, weight: .regular) { //change this
        didSet {
            titleLbl.font = font
        }
    }
    
    var textColor: UIColor? {
        didSet {
            titleLbl.textColor = textColor
        }
    }
    
    var content: String? {
        didSet {
            titleLbl.text = content
            updateFrame()
        }
    }
    
    var contentBgColor: UIColor = UIColor.lightGray {
        didSet {
            backgroundColor = contentBgColor
        }
    }
    
    var tail: CGPoint? {
        didSet {
            updateTailView(position: tail)
        }
    }
    
    fileprivate func updateTailView(position: CGPoint?) {
        guard let position = position else {
            guard !subviews.contains(tailView) else { tailView.removeFromSuperview(); return }
            return
        }
        
        if !subviews.contains(tailView) {
            addSubview(tailView)
            tailView.tintColor = UIColor.lightGray
        }
        
        tailView.frame.origin = position
    }
    
    private func updateFrame() {
        
        let lblSize = titleLbl.sizeThatFits(maxSize)
        print(maxSize)
        frame.size = CGSize.init(width: min(lblSize.width, maxSize.width) + (padding * 2), height: lblSize.height + (padding * 2))
        titleLbl.frame.size = lblSize
    }
    
    private func initialize() {
        
        titleLbl.textColor = UIColor.black
        titleLbl.font = font
        titleLbl.numberOfLines = 0
        titleLbl.textAlignment = .left
        backgroundColor = contentBgColor
        print("subview added")
        addSubview(titleLbl)
        
        titleLbl.frame = CGRect.init(x: padding, y: padding, width: bounds.size.width - (padding*2), height: bounds.size.height - (padding*2))
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initialize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        initialize()
    }
}
