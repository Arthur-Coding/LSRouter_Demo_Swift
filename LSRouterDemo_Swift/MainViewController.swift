//
//  MainViewController.swift
//  LSRouterDemo_Swift
//
//  Created by ArthurShuai on 2018/4/10.
//  Copyright © 2018年 ArthurShuai. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        config()
    }

    // 页面配置
    private func config()
    {
        title = "主页"

        navigationItem.leftBarButtonItem = UIBarButtonItem.init(title: "view测试", style: .done, target: self, action: #selector(testViewAction(sender:)))
        let item1 = UIBarButtonItem.init(title: "vc测试1", style: .done, target: self, action: #selector(nextPageAction(sender:)))
		let item2 = UIBarButtonItem.init(title: "vc测试2", style: .done, target: self, action: #selector(nextPageAction2(sender:)))
        navigationItem.rightBarButtonItems = [item1,item2]

        // 接收通讯信息
        weak var weakSelf = self
        LSRouter.action_SC_receive { (_ information) in
            weakSelf?.title = information as? String
        }

        // 工具组件-TimeCategory测试
        print(LSRouter.time_datestr(from: Date.init(), withDateFormat: "yyyy-MM-dd HH:mm:ss"))
    }

    @objc private func nextPageAction(sender:UIBarButtonItem )
    {
        weak var weakSelf = self
        LSRouter.action_SC_showText(text: "successful!", handler: { (_ module) in
            if let vc = module as? UIViewController
            {
            	weakSelf?.navigationController?.pushViewController(vc, animated: true)
            }
        })
    }

    @objc private func nextPageAction2(sender:UIBarButtonItem )
    {
        LSRouter.action_SC_showAlert(message: "successful again!", from: self)
    }

    @objc private func testViewAction(sender:UIBarButtonItem )
    {
        weak var weakSelf = self
        LSRouter.action_TV_showText(text: "I am a view!", handler: { (_ module) in
            if let textView = module as? UIView
            {
                weakSelf?.view.addSubview(textView)
            }
        })
    }

}
