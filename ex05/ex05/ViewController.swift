//
//  ViewController.swift
//  ex05
//
//  Created by seong_wook_lim on 2022/01/13.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let alertbtn = UIButton(type: .system)
        alertbtn.frame = CGRect(x: 0, y: 100, width: 100, height: 30)
        alertbtn.center.x = self.view.frame.width / 2
        alertbtn.setTitle("basic alert", for: .normal)
        alertbtn.addTarget(self, action: #selector(alertbtn(_:)), for: .touchUpInside)
        self.view.addSubview(alertbtn)
    }
    @objc func alertbtn(_ sender: Any)
    {
        let alert = UIAlertController(title: "Notification", message: "basic message", preferredStyle: .alert)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        let ok = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(cancel)
        alert.addAction(ok)
        let v = UIViewController()
        v.view.backgroundColor = .red
        alert.setValue(v, forKey: "contentViewController")
        self.present(alert,animated: false)
        
    }


}

