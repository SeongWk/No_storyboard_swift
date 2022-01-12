//
//  ViewController.swift
//  ex03
//
//  Created by seong_wook_lim on 2022/01/12.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let title = UILabel(frame: CGRect(x: 0, y: 100, width: 100, height: 30))
        title.text = "First tap"
        title.textColor = .red
        title.textAlignment = .center
        title.font = UIFont.boldSystemFont(ofSize: 15)
        
        title.sizeToFit()
        title.center.x = self.view.frame.width / 2
        self.view.addSubview(title)
        
      
        // Do any additional setup after loading the view.
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let tabbar = self.tabBarController?.tabBar
        //tabbar?.isHidden = (tabbar?.isHidden==true) ? false : true
        UIView.animate(withDuration: TimeInterval(0.15))
        {
            tabbar?.alpha = (tabbar?.alpha == 0 ? 1 : 0)
        }
    }


}

