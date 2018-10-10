//
//  UIInput.swift
//  RasoiAlpha
//
//  Created by Atharva Dandekar on 10/9/18.
//  Copyright © 2018 BeyondLogic. All rights reserved.
//

import UIKit

@IBDesignable class UIInput: UITextField {

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
    
    func setBottomBorder(borderColor: CGColor) {
        self.borderStyle = .none
        self.layer.backgroundColor = UIColor.white.cgColor
        
        self.layer.masksToBounds = false
        self.layer.shadowColor = borderColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 0.0
        
    }
    
    func setFont(size: CGFloat) {
        self.font = UIFont(name: (self.font?.fontName)!, size: size)
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.lightGray {
        didSet {
            setBottomBorder(borderColor: borderColor.cgColor)
        }
    }
    
    @IBInspectable var fontSize: CGFloat = 15.0 {
        didSet {
            setFont(size: fontSize)
        }
    }
    
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    /*override func draw(_ rect: CGRect) {
        // Drawing code
        setBottomBorder(borderColor: UIColor.lightGray.cgColor, fontSize: 17.0)
    }*/
    
    func sharedInit() {
        //common code goes here
        setBottomBorder(borderColor: borderColor.cgColor)
        setFont(size: fontSize)
    }

}
