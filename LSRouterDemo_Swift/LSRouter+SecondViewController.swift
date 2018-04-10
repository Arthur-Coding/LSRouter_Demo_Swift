//
//  LSRouter+SecondViewController.swift
//  LSRouterDemo_Swift
//
//  Created by ArthurShuai on 2018/4/10.
//  Copyright © 2018年 ArthurShuai. All rights reserved.
//

/*
 * 1.此扩展就是模块对外的声明，其他模块、APP通过LSRouter调用声明的接口
 * 2.模块对外可调用接口，要求必须包含“action_”前缀
 * 3.向LSRouter声明模块名与action时，若action需要传入参数，action中必须包含“:”,如“show:”
 * 4.action名命名，建议按照“action_模块名简写_name”的格式，防止在LSRouter所有扩展中造成命名冲突
 * 5.将模块名与模块内方法名进行定义时建议加上static，避免有可能引起的定义冲突
 *
 */

import Foundation

public extension LSRouter {

    private static let module_SC = "SecondViewController"
	private static let module_SC_action1 = "setMessage:"
    private static let module_SC_action2 = "alertWith:"

    public class func action_SC_showText(handler:LSRouterHandler?, param:String?)
    {
		openModule(module_SC, action: module_SC_action1, params: param, perform: handler)
    }

    public class func action_SC_showAlert(handler:LSRouterHandler?, param:String?)
    {
		openModule(module_SC, action: module_SC_action2, params: param, perform: handler)
    }

    public class func action_SC_receive(handler:LSInformationHandler?)
    {
		receiveInformation(withTagName: module_SC+"_test", result: handler)
    }
}
