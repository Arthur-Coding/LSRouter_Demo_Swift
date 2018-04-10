//
//  LSRouter+SecondViewController.swift
//  LSRouterDemo_Swift
//
//  Created by ArthurShuai on 2018/4/10.
//  Copyright © 2018年 ArthurShuai. All rights reserved.
//

/*
 * 1.此扩展就是模块对外的声明，其他模块、APP通过LSRouter调用声明的API
 * 2.模块对外可调用API，要求必须包含“action_”前缀
 * 3.API命名建议按照“action_模块名简写_name”的格式，防止在LSRouter所有扩展中造成命名冲突
 * 4.将模块名与模块内方法名进行定义时建议添加private和static标志，避免有可能引起的定义冲突
 * 5.模块内方法名必须添加@objc标记
 *
 */

import Foundation

public extension LSRouter {

    private static let module_SC = "SecondViewController"
	private static let module_SC_action1 = NSStringFromSelector(#selector(setter: SecondViewController.message))
    private static let module_SC_action2 = NSStringFromSelector(#selector(SecondViewController.alertTest(message:)))


    /// 展示SecondPage
    /// * 同时给文本赋值
    ///
    /// - Parameters:
    ///   - handler: 下一步处理
    ///   - param: 文本信息
    public class func action_SC_showText(text:String?, handler:LSRouterHandler?)
    {
		openModule(module_SC, action: module_SC_action1, params: text, perform: handler)
    }


    /// 展示SecondPage
    /// * 同时展示一个弹出框
    ///
    /// - Parameters:
    ///   - from: 视图控制器
    ///   - param: 弹窗信息
    public class func action_SC_showAlert(message:String?, from:UIViewController!)
    {
        openModule(module_SC, action: module_SC_action2, params: message, perform: { (_ module) in
            from.navigationController?.pushViewController(module as! UIViewController, animated: true)
        })
    }


    /// 接收SecondPage的通讯信息
    ///
    /// - Parameter handler: 接收到信息处理
    public class func action_SC_receive(handler:LSInformationHandler?)
    {
		receiveInformation(withTagName: module_SC+"_test", result: handler)
    }
}
