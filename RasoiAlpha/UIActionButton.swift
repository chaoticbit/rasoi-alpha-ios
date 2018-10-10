//
//  UIActionButton.swift
//  RasoiAlpha
//
//  Created by Atharva Dandekar on 10/9/18.
//  Copyright © 2018 BeyondLogic. All rights reserved.
//

import UIKit

@IBDesignable class UIActionButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        sharedInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        sharedInit()
    }
    
    override func prepareForInterfaceBuilder() {
        sharedInit()
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
//    override func draw(_ rect: CGRect) {
        // Drawing code
//    }
    
    func refreshBackgroundColor(value: UIColor) {
        self.backgroundColor = value
    }
    
    @IBInspectable var bgColor: UIColor = UIColor.lightGray {
        didSet {
            refreshBackgroundColor(value: bgColor)
        }
    }
 
    func sharedInit() {
        //common logic goes here
        refreshBackgroundColor(value: bgColor)
        self.layer.cornerRadius = 4
    }
}
