//
//  ViewController.swift
//  Calculator
//
//  Created by 周宁 on 15/12/2.
//  Copyright © 2015年 slyak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultField: UITextField!

    var op: String = ""
    var first: String = "0"
    var second: String = ""
    var showSecond: Bool = false;

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func onBtnTouchDown(sender: MathButton) {
        calculate(sender.getValue());
    }

    func isChangeType(title: String) -> Bool {
        return ["+/-", "%"].contains(title)
    }

    func isOp(title: String) -> Bool {
        return ["+", "-", "×", "÷", "="].contains(title)
    }

    func calculate(title: String) {
        if (isChangeType(title)) {
            changeDisplayValue(title)
        } else {
            showSecond = false
            if isOp(title) {
                if !second.isEmpty {
                    doCaculate()
                }
                if (title != "=") {
                    op = title
                }
            } else if (title == "C") {
                op = ""
                first = "0"
                second = ""
            } else if op.isEmpty {
                first = safeAppend(first, append: title)
            } else {
                second = safeAppend(second, append: title)
                showSecond = true
            }
        }
        display();
    }

    func safeAppend(oldVal: String, append: String) -> String {
        if (append == "." && oldVal.containsString(".")) {
            return oldVal
        }
        if (oldVal == "0") {
            return append
        }
        return oldVal + append
    }

    func changeDisplayValue(changeType: String) {
        var toChange = showSecond ? second : first;
        if (changeType == "+/-") {
            toChange = "\(-(toChange as NSString).doubleValue)"
        } else if (changeType == "%") {
            toChange = "\((toChange as NSString).doubleValue / 100)"
        }

        //rewrite
        if showSecond {
            second = toChange
        } else {
            first = toChange
        }
    }

    func doCaculate() {
        if (second.isEmpty) {
            return
        }
        if (op == "+") {
            first = "\(((first as NSString).doubleValue + (second as NSString).doubleValue))";
        } else if (op == "-") {
            first = "\(((first as NSString).doubleValue - (second as NSString).doubleValue))";
        } else if (op == "×") {
            first = "\(((first as NSString).doubleValue * (second as NSString).doubleValue))";
        } else if (op == "÷") {
            first = "\(((first as NSString).doubleValue / (second as NSString).doubleValue))";
        } else {
            first = "0"
        }
        second = ""
    }

    func display() {
        resultField.text = showSecond ? second : first;
    }
}

