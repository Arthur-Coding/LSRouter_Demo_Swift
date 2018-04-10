//
//  SecondViewController.swift
//  LSRouterDemo_Swift
//
//  Created by ArthurShuai on 2018/4/10.
//  Copyright © 2018年 ArthurShuai. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    open var message:String?


    override func viewDidLoad() {
        super.viewDidLoad()
		
		config()
    }

    // 页面配置
    private func config()
    {
        title = "SecondPage"
		view.backgroundColor = UIColor.white
        
        let lab = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: 150, height: 40))
        lab.center = self.view.center;
        lab.textColor = UIColor.red
        lab.textAlignment = .center
        lab.numberOfLines = 2
        lab.text = message
        view.addSubview(lab)
    }

    private func testNotification()
    {
        LSRouter.sendInformation("FirstPage", tagName:"SecondViewController_test")
    }

    public func alertWith(message:String?)
    {
        let alert = UIAlertController.init(title: "Surprised!!!", message: nil, preferredStyle: .alert)
        let action = UIAlertAction.init(title: "Sure", style: .default, handler: nil)
		alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }

}
