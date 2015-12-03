//
//  MathButton.swift
//  Calculator
//
//  Created by 周宁 on 15/12/2.
//  Copyright © 2015年 slyak. All rights reserved.
//

import UIKit

class MathButton: UIButton {

    var dftBgColor: CGColor!
    var dftTintColor: UIColor!
    var touchBgColor: CGColor!
    var touchTintColor: UIColor!

    func config(dftBgColor: UIColor, dftTintColor: UIColor, touchBgColor: UIColor, touchTintColor: UIColor) {
        self.dftBgColor = dftBgColor.CGColor
        self.dftTintColor = dftTintColor
        self.touchBgColor = touchBgColor.CGColor
        self.touchTintColor = touchTintColor
        self.layer.backgroundColor = self.dftBgColor
        self.tintColor = self.dftTintColor
        self.addTarget(self, action: Selector("onTouchDown:"), forControlEvents: .TouchDown)
        self.addTarget(self, action: Selector("onTouchUpInside:"), forControlEvents: .TouchUpInside)
        self.layer.borderColor = UIColor(colorLiteralRed: 0.56, green: 0.56, blue: 0.56, alpha: 1).CGColor
        self.layer.borderWidth = 0.5
        self.titleLabel?.font=UIFont(name: "Arial", size: CGFloat(28))
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }


    func onTouchDown(sender: UIButton) {
        sender.layer.backgroundColor = touchBgColor
        sender.tintColor = touchTintColor
    }

    func onTouchUpInside(sender: UIButton) {
        sender.layer.backgroundColor = dftBgColor
        sender.tintColor = dftTintColor
    }
    
    func getValue()->String{
        return (self.titleLabel?.text)!
    }
}
