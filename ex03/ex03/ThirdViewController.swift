//
//  ThirdViewController.swift
//  ex03
//
//  Created by seong_wook_lim on 2022/01/12.
//

import UIKit

class ThirdViewController:UIViewController
{
    override func viewDidLoad() {
        super.viewDidLoad()
        let title = UILabel(frame: CGRect(x: 0, y: 100, width: 100, height: 30))
        title.text = "Third tap"
        title.textColor = .purple
        title.textAlignment = .center
        title.font = UIFont.boldSystemFont(ofSize: 15)
        
        title.sizeToFit()
        title.center.x = self.view.frame.width / 2
        self.view.addSubview(title)
        
        
    }
    
}
