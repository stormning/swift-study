//
//  CalBtn.swift
//  Calculator
//
//  Created by 周宁 on 15/12/2.
//  Copyright © 2015年 slyak. All rights reserved.
//

import UIKit

class CalBtn: MathButton {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        super.config(
        UIColor(colorLiteralRed: 0.88, green: 0.88, blue: 0.88, alpha: 1.0),
                dftTintColor: UIColor(colorLiteralRed: 0.0, green: 0.0, blue: 0.0, alpha: 1.0),
                touchBgColor: UIColor(colorLiteralRed: 0.7, green: 0.7, blue: 0.7, alpha: 1.0),
                touchTintColor: UIColor(colorLiteralRed: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        )
    }
}
