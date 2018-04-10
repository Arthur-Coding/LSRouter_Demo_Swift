//
//  SecondViewController.swift
//  LSRouterDemo_Swift
//
//  Created by ArthurShuai on 2018/4/10.
//  Copyright © 2018年 ArthurShuai. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @objc open var message:String? {
        didSet {
            let lab = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: 150, height: 40))
            lab.center = self.view.center;
            lab.textColor = UIColor.red
            lab.textAlignment = .center
            lab.numberOfLines = 2
            lab.text = message
            view.addSubview(lab)

            navigationItem.rightBarButtonItem = UIBarButtonItem.init(title: "更改主页标题", style: .done, target: self, action: #selector(testNotification))
        }
    }


    override func viewDidLoad() {
        super.viewDidLoad()
		
		config()
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)

        LSRouter.releaseModule("SecondViewController")
    }

    // 页面配置
    private func config()
    {
        title = "SecondPage"
		view.backgroundColor = UIColor.white
    }

    @objc private func testNotification()
    {
        LSRouter.sendInformation("FirstPage", tagName:"SecondViewController_test")
    }

    @objc public func alertTest(message:String?)
    {
        let alert = UIAlertController.init(title: "Surprised!", message: message, preferredStyle: .alert)
        let action = UIAlertAction.init(title: "Sure", style: .default, handler: nil)
		alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }

}
