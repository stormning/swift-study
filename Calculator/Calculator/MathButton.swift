//
//  MathButton.swift
//  Calculator
//
//  Created by 周宁 on 15/12/2.
//  Copyright © 2015年 slyak. All rights reserved.
//

import UIKit

class MathButton: UIButton {

    var dftBgColor: CGColor! = nil
    var dftTintColor: UIColor! = nil
    var touchBgColor: CGColor! = nil
    var touchTintColor: UIColor! = nil

    func config(dftBgColor: UIColor, dftTintColor: UIColor, touchBgColor: UIColor, touchTintColor: UIColor) {
        self.dftBgColor = dftBgColor.CGColor
        self.dftTintColor = dftTintColor
        self.touchBgColor = touchBgColor.CGColor
        self.touchTintColor = touchTintColor
        self.layer.backgroundColor = self.dftBgColor
        self.tintColor = self.dftTintColor
        self.addTarget(self, action: Selector("onTouchDown:"), forControlEvents: .TouchDown)
        self.addTarget(self, action: Selector("onTouchUpInside:"), forControlEvents: [.TouchUpInside,.TouchUpOutside])
        self.layer.borderWidth = 0.5
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
}
