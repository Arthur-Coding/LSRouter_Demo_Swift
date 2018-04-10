//
//  LSRouter+TestView.swift
//  LSRouterDemo_Swift
//
//  Created by ArthurShuai on 2018/4/10.
//  Copyright © 2018年 ArthurShuai. All rights reserved.
//

import Foundation

public extension LSRouter {

    private static let module_TV = "TestView"
    private static let module_TV_action = "changeShowText:"

    public class func action_TV_showText(handler:LSRouterHandler?, text:String?)
    {
        openModule(module_TV, action: module_TV_action, params: text, perform: handler)
    }

}
