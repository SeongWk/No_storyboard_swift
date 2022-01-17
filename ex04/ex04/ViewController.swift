//
//  ViewController.swift
//  ex04
//
//  Created by seong_wook_lim on 2022/01/13.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.intitleinput()
        //self.intitle()
        //self.intitleNew()
        // Do any additional setup after loading the view.
    }
    //func intitle()
    //{
        //let ntitle = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        //ntitle.numberOfLines = 2
        //ntitle.textAlignment = .center
        //ntitle.font = UIFont.systemFont(ofSize: 15)
        //ntitle.text = "Duration \n (1/10~1/11)"
        //ntitle.textColor = .blue
        //self.navigationItem.titleView = ntitle
        
        
    //}
    //func intitleNew()
   // {
      //  let containerview = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 36))
        //let toptitle = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 18))
        //toptitle.numberOfLines = 1
        //toptitle.textAlignment = .center
        //toptitle.font = UIFont.systemFont(ofSize: 15)
        //toptitle.textColor = .black
        //toptitle.text = "Address"
        
        //let subtitle = UILabel(frame: CGRect(x: 0, y: 18, width: 200, height: 18))
        //subtitle.numberOfLines = 1
        //subtitle.textAlignment = .center
        //subtitle.font = UIFont.systemFont(ofSize: 12)
        //subtitle.textColor = .black
        //subtitle.text = "010-000-0000"
        //containerview.addSubview(toptitle)
        //containerview.addSubview(subtitle)
        
        //self.navigationItem.titleView = containerview
        
    //}
    func intitleinput()
    {
        let tf = UITextField()
        tf.frame = CGRect(x: 0, y: 0, width: 300, height: 35)
        tf.font = UIFont.systemFont(ofSize: 13)
        tf.layer.borderColor = UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1.0).cgColor
        tf.layer.borderWidth = 0.4
        self.navigationItem.titleView = tf

        let back = UIImage(named: "arrow-back")
        let leftitem = UIBarButtonItem(image: back, style: .plain, target: self, action: nil)
        self.navigationItem.leftBarButtonItem = leftitem
        
        let rv = UIView()
        rv.frame = CGRect(x: 0, y: 0, width: 70, height: 37)
        let ritem = UIBarButtonItem(customView: rv)
        self.navigationItem.rightBarButtonItem = ritem
        
        let cnt  = UILabel()
        cnt.frame = CGRect(x: 10, y: 8, width: 20, height: 20)
        cnt.font = UIFont.boldSystemFont(ofSize: 10)
        cnt.textColor = UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1.0)
        cnt.text = "12"
        cnt.textAlignment = .center
        cnt.layer.cornerRadius = 3
        cnt.layer.borderWidth = 2
        cnt.layer.borderColor = UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1.0).cgColor
        rv.addSubview(cnt)
        
        let more = UIButton(type: .system)
        more.frame = CGRect(x: 50, y: 10, width: 16, height: 16)
        more.setImage(UIImage(named: "more"), for: .normal)
        rv.addSubview(more)
        
    }

}

