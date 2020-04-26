//
//  ViewController.swift
//  iOSProofs_Delegation_Example
//
//  Created by Nikhil Balne on 26/04/20.
//  Copyright © 2020 Nikhil Balne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: Any) {
        let ccvc = self.storyboard?.instantiateViewController(identifier: "ColorChangeViewController") as! ColorChangeViewController
        ccvc.colorChangeDelegate = self
        self.navigationController?.pushViewController(ccvc, animated: true)
    }
    
}

extension ViewController : ColorChangeDelegate {
    func backgroundColorChange(color: UIColor) {
        self.view.backgroundColor = color
    }
}
