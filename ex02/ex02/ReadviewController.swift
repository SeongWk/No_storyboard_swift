//
//  ReadviewController.swift
//  ex02
//
//  Created by seong_wook_lim on 2022/01/12.
//

import UIKit

class ReadviewController: UIViewController
{
    var pemail: String?
    var pupdate: Bool?
    var pinterval: Double?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        let email = UILabel()
        let update = UILabel()
        let interval = UILabel()
        
        email.frame = CGRect(x: 50, y: 100, width: 300, height: 30)
        update.frame = CGRect(x: 50, y: 150, width: 300, height: 30)
        interval.frame = CGRect(x: 50, y: 200, width: 300, height: 30)
        
        email.text = "email: \(self.pemail!)"
        update.text = "update: \(self.pupdate == true ? "update success" : "update fail")"
        interval.text = "interval: \(self.pinterval!)minutes"
        
        self.view.addSubview(email)
        self.view.addSubview(update)
        self.view.addSubview(interval)
    }
}
