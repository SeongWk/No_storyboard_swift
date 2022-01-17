//
//  ViewController.swift
//  ex06
//
//  Created by seong_wook_lim on 2022/01/13.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let frame = CGRect(x: 30, y: 50, width: 150, height: 30)
        let csbtn = btncustom(frame: frame)
        self.view.addSubview(csbtn)
        
        let rectbtn = btncustom(type: .rect)
        rectbtn.frame = CGRect(x: 30, y: 200, width: 150, height: 30)
        self.view.addSubview(rectbtn)
        
        let circlebtn = btncustom(type: .circle)
        circlebtn.frame = CGRect(x: 200, y: 200, width: 150, height: 30)
        self.view.addSubview(circlebtn)
    }


}

