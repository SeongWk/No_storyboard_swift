//
//  ViewController.swift
//  ex01
//
//  Created by seong_wook_lim on 2022/01/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let btn = UIButton(type: .system)
        btn.frame=CGRect(x:50,y:100,width:150,height:30)
        btn.setTitle("test button", for: .normal)
        btn.center = CGPoint(x: self.view.frame.size.width / 2, y: 100)
        self.view.addSubview(btn)
        btn.addTarget(self, action: #selector(btnOnclick(_:)), for: .touchUpInside)
        

    }
    @objc func btnOnclick(_ sender: Any)
    {
        if let btn = sender as? UIButton
        {
            btn.setTitle("click", for: .normal)
        }
    }


}

