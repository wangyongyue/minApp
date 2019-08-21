//
//  TableBannerCell.swift
//  Demo
//
//  Created by apple on 2019/7/29.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

import VueSwift
class TableBannerCell: UITableViewCell {
    
    let label:UILabel = {
        let a = UILabel()
        return a
    }()
    
    let tap = UITapGestureRecognizer()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(label)
        self.contentView.addGestureRecognizer(tap)
        
        label.snp.makeConstraints { (make) in
            
            make.top.equalTo(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
            
        }
        
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func setV_Model(_ aModel: VueData) {
        
        if aModel is TableBannerCellModel{
            
            let h = aModel as! TableBannerCellModel
            label.text = h.name
            tap.v_tap {
                
                h.v_to()
            }
        }
    }
    
    
}
class TableBannerCellModel: VueData{
    
    
    var name:String?
        
    
    override func v_height() -> CGFloat {
        return 80
    }
    
}



