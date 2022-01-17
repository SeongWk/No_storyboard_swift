//
//  MapalertViewController.swift
//  ex05
//
//  Created by seong_wook_lim on 2022/01/13.
//

import UIKit
import MapKit
class MapalertViewController: UIViewController
{
    override func viewDidLoad() {
        let alertbtn = UIButton(type: .system)
        alertbtn.frame = CGRect(x: 0, y: 150, width: 100, height: 30)
        alertbtn.center.x = self.view.frame.width / 2
        alertbtn.setTitle("Map alert", for: .normal)
        alertbtn.addTarget(self, action: #selector(mapalert(_:)), for: .touchUpInside)
        self.view.addSubview(alertbtn)
    }
    
    @objc func mapalert(_ sender: UIButton)
    {
        let alert = UIAlertController(title: "Notification", message: "Is this place?", preferredStyle: .alert)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        let ok = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(cancel)
        alert.addAction(ok)
        
        let contentmap = UIViewController()
        let mapkitview = MKMapView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        contentmap.view = mapkitview
        alert.setValue(contentmap, forKey: "contentViewController")
        self.present(alert,animated: false)
    }
}
