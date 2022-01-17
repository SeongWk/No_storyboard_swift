//
//  btncustom.swift
//  ex06
//
//  Created by seong_wook_lim on 2022/01/13.
//

import UIKit

public enum CSbuttontype
{
    case rect
    case circle
    
}

class btncustom: UIButton
{
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.backgroundColor = .green
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.black.cgColor
        self.setTitle("button", for: .normal)
    }
    
    override init(frame:CGRect)
    {
        super.init(frame: frame)
        self.backgroundColor = .brown
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 2
        self.setTitle("just code", for: .normal)
    }
    init()
    {
        super.init(frame: CGRect.zero)
    }
    convenience init(type:CSbuttontype)
    {
        self.init()
        self.addTarget(self, action: #selector(counting(_:)), for: .touchUpInside)
        switch type {
        case .rect:
            self.backgroundColor = .black
            self.layer.borderColor = UIColor.black.cgColor
            self.layer.borderWidth = 2
            self.layer.cornerRadius = 0
            self.setTitleColor(.white, for: .normal)
            self.setTitle("Rect button", for: .normal)
        case .circle:
            self.backgroundColor = .red
            self.layer.borderColor = UIColor.blue.cgColor
            self.layer.borderWidth = 2
            self.layer.cornerRadius = 50
            self.setTitle("Circle button", for: .normal)
        }
    }
    @objc func counting(_ sender: UIButton)
    {
        sender.tag  = sender.tag+1
        sender.setTitle("\(sender.tag)", for: .normal)
        
    }
    
}
