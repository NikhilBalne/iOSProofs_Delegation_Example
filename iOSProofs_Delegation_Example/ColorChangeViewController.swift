//
//  ColorChangeViewController.swift
//  iOSProofs_Delegation_Example
//
//  Created by Nikhil Balne on 26/04/20.
//  Copyright © 2020 Nikhil Balne. All rights reserved.
//

import UIKit

protocol ColorChangeDelegate{
    func backgroundColorChange(color:UIColor)
}

class ColorChangeViewController: UIViewController {

    var colorChangeDelegate : ColorChangeDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func colorButtonTapped(_ sender: Any) {
        if let button = sender as? UIButton {
            switch button.tag {
            case 101:
                print("Red")
                colorChangeDelegate.backgroundColorChange(color: .red)
            case 102:
                print("Green")
                colorChangeDelegate.backgroundColorChange(color: .green)
            case 103:
                print("Blue")
                colorChangeDelegate.backgroundColorChange(color: .blue)
            default:
                print("Purple")
                colorChangeDelegate.backgroundColorChange(color: .purple)
            }
            self.navigationController?.popViewController(animated: true)
        }
    }
}
