//
//  NetworkTools.swift
//  CategoryAll
//
//  Created by xiudou on 2016/12/1.
//  Copyright © 2016年 CoderST. All rights reserved.
//  网络请求
//  request : 由于使用到了almofire,所以此处用到了cocoapods导入框架

import UIKit
import Alamofire

enum MethodType {
    case GET
    case POST
}

class NetworkTools {
    
    // let是线程安全的
    static let shareInstance : NetworkTools = {
        let tools = NetworkTools()
        return tools
    }()


    /**
     网络请求
     
     - parameter requestType:      请求类型
     - parameter urlString:        请求URL
     - parameter params:           请求参数
     - parameter finishedCallBack: 回调数据
     */
     func loadData(requestType : MethodType, urlString : String, params : [String : AnyObject]? = nil, finishedCallBack : (result : AnyObject) -> ()){
        let method = requestType == .GET ? Method.GET : Method.GET
        Alamofire.request(method, urlString, parameters: params).responseJSON { (response) -> Void in
            
            guard let result = response.result.value else{ return }
            
            finishedCallBack(result: result)

            
        }
        
        
    }
}
