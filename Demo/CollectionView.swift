//
//  CollectionView.swift
//  Demo
//
//  Created by wangyongyue on 2019/7/28.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift

class CollectionView: UIView {

    var m:Vue?
    convenience init(_ m:Vue) {
        self.init()
        
        self.m = m
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize.init(width: WIDTH/2, height: WIDTH/2)
        layout.scrollDirection = .vertical
        let table = CCollection.init(frame: CGRect.zero, collectionViewLayout: layout)
        self.addSubview(table)
        table.backgroundColor = UIColor.clear
        table.snp.makeConstraints { (make) in
            
            make.top.equalTo(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
            
        }
        table.v_array(vId: ARRAYID, vue: m)
        table.v_index(vId: INDEXID, vue: m)
        
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.white
        
    }
    func viewLoad(){
        
        m?.v_start()
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        
    }
    
}
