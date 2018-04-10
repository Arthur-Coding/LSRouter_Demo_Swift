//
//  LSRouter+TestView.swift
//  LSRouterDemo_Swift
//
//  Created by ArthurShuai on 2018/4/10.
//  Copyright © 2018年 ArthurShuai. All rights reserved.
//

import Foundation

public extension LSRouter {

    public class func action_TV_showText(text:String?, handler:LSRouterHandler?)
    {
        let testView = TestView.init(frame: UIScreen.main.bounds)
        testView.changeShowText(text: text)
        if handler != nil
        {
            handler!(testView)
        }
    }

}
