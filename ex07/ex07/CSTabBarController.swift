//
//  CSTabBarController.swift
//  ex07
//
//  Created by seong_wook_lim on 2022/01/17.
//

import UIKit

class CSTabBarController: UITabBarController
{
    let csView = UIView()
    let tabItem1 = UIButton(type:.system)
    let tabItem2 = UIButton(type:.system)
    let tabItem3 = UIButton(type:.system)
    
    override func viewDidLoad() {
        self.tabBar.isHidden = true
        
        let width = self.view.frame.width
        let height : CGFloat = 80
        let x : CGFloat = 0
        let y = self.view.frame.height - height
        
        self.csView.frame = CGRect(x: x, y: y, width: width, height: height)
        self.csView.backgroundColor = .brown
        
        self.view.addSubview(self.csView)
        
        let tabwidth = self.csView.frame.width / 3
        let tabheight = self.csView.frame.height
        
        self.tabItem1.frame = CGRect(x: 0, y: 0, width: tabwidth, height: tabheight)
        self.tabItem2.frame = CGRect(x: tabwidth, y: 0, width: tabwidth, height: tabheight)
        self.tabItem3.frame = CGRect(x: tabwidth * 2, y: 0, width: tabwidth, height: tabheight)
        
        self.addTabbarbtn(btn: self.tabItem1, title: "first button", tag: 0)
        self.addTabbarbtn(btn: self.tabItem2, title: "Second button", tag: 1)
        self.addTabbarbtn(btn: self.tabItem3, title: "Third button", tag: 2)
        
        
    }
    func addTabbarbtn(btn:UIButton, title:String, tag:Int)
    {
        btn.setTitle(title, for: .normal)
        btn.tag = tag
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.yellow, for: .selected)
        btn.addTarget(self, action: #selector(onTabbaritemclick(_:)), for: .touchUpInside)
        self.csView.addSubview(btn)
        
    }
    @objc func onTabbaritemclick(_ sender:UIButton)
    {
        self.tabItem1.isSelected = false
        self.tabItem2.isSelected = false
        self.tabItem3.isSelected = false
        
        sender.isSelected = true
        self.selectedIndex = sender.tag
    }
}
