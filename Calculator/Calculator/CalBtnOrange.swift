//
//  CalBtnOrange.swift
//  Calculator
//
//  Created by 周宁 on 15/12/2.
//  Copyright © 2015年 slyak. All rights reserved.
//

import UIKit

class CalBtnOrange: MathButton {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        super.config(
        UIColor(colorLiteralRed: 0.97, green: 0.57, blue: 0.19, alpha: 1.0),
                dftTintColor: UIColor(colorLiteralRed: 1.0, green: 1.0, blue: 1.0, alpha: 1.0),
                touchBgColor: UIColor(colorLiteralRed: 0.7, green: 0.7, blue: 0.7, alpha: 1.0),
                touchTintColor: UIColor(colorLiteralRed: 0.77, green: 0.45, blue: 0.14, alpha: 1.0)
        )
    }
}
