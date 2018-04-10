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

    override init(frame: CGRect) {
        super.init(frame: frame)

        backgroundColor = UIColor.red

        lab = UILabel.init(frame: CGRect.init(x: 0, y: 200, width: 150, height: 40))
        lab?.textColor = UIColor.white
        lab?.textAlignment = .center
        lab?.numberOfLines = 2
        addSubview(lab!)

        let btn = UIButton.init(type: .custom)
        btn.frame = CGRect.init(x: 50, y: 50, width: 60, height: 40)
        btn.setTitle("Back", for: .normal)
        addSubview(btn)
        btn.addTarget(self, action: #selector(backAction), for: .touchUpInside)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @objc private func backAction()
    {
		removeFromSuperview()
    }

    public func changeShowText(text:String?)
    {
        lab?.text = text
    }

}
