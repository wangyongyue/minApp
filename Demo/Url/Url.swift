//
//  Url.swift
//  Demo
//
//  Created by apple on 2019/7/2.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

protocol HttpProtocol {
    var url:String{get}
    func getPOSTBody() -> [String:Any]
}
protocol ViewLoadProtocol {
    func viewLoad()
}
protocol GetViewProtocol {
    func getView() -> ViewLoadProtocol
}
extension UIViewController{
    
    static func toLogin(){
    
        let app = UIApplication.shared.delegate as! AppDelegate
        let nv = BaseNavigationController.init(rootViewController: Home().v_viewController())
        app.window?.rootViewController = nv
        app.window?.makeKeyAndVisible()

    }
    static func toHome(){
        let app = UIApplication.shared.delegate as! AppDelegate
        let tab = BaseTabBarController()
        app.window?.rootViewController = tab;
        app.window?.makeKeyAndVisible();
    
    }

}


//VUE_ID
let ARRAYID = "ArrayID"
let INDEXID = "IndexID"
let TABID = "TabID"
let TABINDEXID = "TabIndexID"
let NAVBACKID = "NavBackID"

//http接口
let login = "/login"
