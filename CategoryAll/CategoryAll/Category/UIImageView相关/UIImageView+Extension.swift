//
//  UIImageView+Extension.swift
//  DYZB
//
//  Created by xiudou on 16/11/1.
//  Copyright © 2016年 CoderST. All rights reserved.
//

import UIKit


extension UIImageView{
    
    /**
     开始动画
     */
    func playGifAnimation(images : [UIImage]?){
        guard let imageArray = images else { return }
        animationImages = imageArray
        animationDuration = 0.5
        animationRepeatCount = 0
        startAnimating()
    }
    
    /**
     结束动画
     */
    func stopGifAnimation(){
        if isAnimating() == true{
            stopAnimating()
        }
        
        removeFromSuperview()
    }
    
}