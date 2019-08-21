//
//  TestHttp.swift
//  Demo
//
//  Created by apple on 2019/7/30.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class TestHttp:HttpProtocol{
    
    var url:String = "/test"
    var userId:Int?
    var token:String?
    var id:Int?
    func getPOSTBody() -> [String:Any]{
        
        var body = [String:Any]()
        body["userId"] = userId
        body["token"] = token
        body["id"] = id
        
        return body
    }
    
    
}
