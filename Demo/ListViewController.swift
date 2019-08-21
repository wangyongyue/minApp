//
//  ListViewController.swift
//  Demo
//
//  Created by wangyongyue on 2019/7/28.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift

class ListViewController: UIViewController {

    var m:Vue?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        
        let table = CTable()
        self.view.addSubview(table)
        table.snp.makeConstraints { (make) in
            
            make.top.equalTo(64)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
            
        }
        table.v_array(vId: ARRAYID, vue: m)
        table.v_index(vId: INDEXID, vue: m)
        
        
        //返回
        let button = UIButton()
        button.setImage(Image.Back(), for: .normal)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(customView: button)
        button.v_click {
            
            Router.pop(nil)
        }
        button.v_if(vId: NAVBACKID, vue: m)
        
        m?.v_start()
    }

}
