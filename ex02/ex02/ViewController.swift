//
//  ViewController.swift
//  ex02
//
//  Created by seong_wook_lim on 2022/01/12.
//

import UIKit

class ViewController: UIViewController {
    
    var paramemail: UITextField!
    var paramupdate: UISwitch!
    var paramInterval: UIStepper!
    
    var txtupdate: UILabel!
    var txtinterval: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Settings"
        
        let lblemail = UILabel()
        lblemail.frame = CGRect(x: 30, y: 100, width: 100, height: 30)
        lblemail.text = "E-mail"
        lblemail.font = UIFont.systemFont(ofSize: 15)
        self.view.addSubview(lblemail)
        
        let lblupdate = UILabel()
        lblupdate.frame = CGRect(x: 30, y: 150, width: 100, height: 30)
        lblupdate.text = "Update"
        lblupdate.font = UIFont.systemFont(ofSize: 15)
        self.view.addSubview(lblupdate)
        
        let lblInterval = UILabel()
        lblInterval.frame = CGRect(x: 30, y: 200, width: 100, height: 30)
        lblInterval.text = "Interval"
        lblInterval.font = UIFont.systemFont(ofSize: 15)
        self.view.addSubview(lblInterval)
        
        self.paramemail = UITextField()
        self.paramemail.frame = CGRect(x: 120, y: 100, width: 220, height: 30)
        self.paramemail.font = UIFont.systemFont(ofSize: 15)
        self.paramemail.borderStyle = .roundedRect
        self.view.addSubview(self.paramemail)
        
        self.paramupdate = UISwitch()
        self.paramupdate.frame = CGRect(x: 120, y: 150, width: 50, height: 30)
        self.paramupdate.setOn(true, animated: true)
        self.view.addSubview(self.paramupdate)
        self.paramupdate.addTarget(self, action: #selector(Updatevalue(_:)), for: .valueChanged)
        
        self.paramInterval = UIStepper()
        self.paramInterval.frame = CGRect(x: 120, y: 200, width: 50, height: 30)
        self.paramInterval.minimumValue = 0
        self.paramInterval.maximumValue = 100
        self.paramInterval.stepValue = 1
        self.paramInterval.value = 0
        self.view.addSubview(self.paramInterval)
        self.paramInterval.addTarget(self, action: #selector(Intervalvalue(_:)), for: .valueChanged)
        
        self.txtupdate = UILabel()
        self.txtupdate.frame = CGRect(x: 250, y: 150, width: 100, height: 30)
        self.txtupdate.font = UIFont.systemFont(ofSize: 13)
        self.txtupdate.textColor = UIColor.red
        self.txtupdate.text = "update"
        self.view.addSubview(self.txtupdate)
        
        self.txtinterval = UILabel()
        self.txtinterval.frame = CGRect(x: 250, y: 200, width: 100, height: 30)
        self.txtinterval.font = UIFont.systemFont(ofSize: 13)
        self.txtinterval.textColor = UIColor.red
        self.txtinterval.text = "0minutes"
        self.view.addSubview(self.txtinterval)
        
        let submitbtn = UIBarButtonItem(barButtonSystemItem: .compose, target: self, action: #selector(submit(_:)))
        self.navigationItem.rightBarButtonItem = submitbtn
        // Do any additional setup after loading the view.
    }
    @objc func Updatevalue(_ sender:UISwitch)
    {
        self.txtupdate.text = (sender.isOn == true ? "update": "Not update")
    }
    @objc func Intervalvalue(_ sender:UIStepper)
    {
        self.txtinterval.text = ("\(Int(sender.value))minutes")
    }
    @objc func submit(_ sender: Any)
    {
        let rvc = ReadviewController()
        rvc.pemail = self.paramemail.text
        rvc.pupdate = self.paramupdate.isOn
        rvc.pinterval = self.paramInterval.value
        
        self.navigationController?.pushViewController(rvc, animated: true)
    }


}

