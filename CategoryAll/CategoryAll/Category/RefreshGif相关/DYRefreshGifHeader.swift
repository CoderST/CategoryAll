//
//  DYRefreshGifHeader.swift
//  DYZB
//
//  Created by xiudou on 16/10/31.
//  Copyright © 2016年 CoderST. All rights reserved.
//

import UIKit
import MJRefresh
class DYRefreshGifHeader: MJRefreshGifHeader {

    override init(frame: CGRect) {
        super.init(frame: frame)
        lastUpdatedTimeLabel?.hidden = true
        stateLabel?.hidden = true
        setImages([UIImage(named: "reflesh1_60x55")!,UIImage(named: "reflesh2_60x55")!,UIImage(named: "reflesh3_60x55")!], forState: .Refreshing)
        
        setImages([UIImage(named: "reflesh1_60x55")!,UIImage(named: "reflesh2_60x55")!,UIImage(named: "reflesh3_60x55")!], forState: .Pulling)
        
        setImages([UIImage(named: "reflesh1_60x55")!,UIImage(named: "reflesh2_60x55")!,UIImage(named: "reflesh3_60x55")!], forState: .Idle)
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
