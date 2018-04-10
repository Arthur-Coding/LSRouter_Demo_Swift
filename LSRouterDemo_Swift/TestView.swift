//
//  TestView.swift
//  LSRouterDemo_Swift
//
//  Created by ArthurShuai on 2018/4/10.
//  Copyright © 2018年 ArthurShuai. All rights reserved.
//

import UIKit

class TestView: UIView {

    var lab:UILabel?

    convenience init() {
        self.init()

        frame = UIScreen.main.bounds
        backgroundColor = UIColor.red

        lab = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: 150, height: 40))
        lab?.center = center;
        lab?.textColor = UIColor.red
        lab?.textAlignment = .center
        lab?.numberOfLines = 2
        addSubview(lab!)

        let btn = UIButton.init(type: .custom)
        btn.frame = CGRect.init(x: 50, y: 50, width: 60, height: 40)
        btn.setTitle("Back", for: .normal)
        addSubview(btn)
        btn.addTarget(self, action: #selector(backAction), for: .touchUpInside)
    }

    @objc private func backAction()
    {
		removeFromSuperview()
    }

    public func changeShowText(text:String?) {
        
    }

}
