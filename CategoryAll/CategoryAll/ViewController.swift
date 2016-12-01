//
//  ViewController.swift
//  CategoryAll
//
//  Created by xiudou on 2016/11/30.
//  Copyright © 2016年 CoderST. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK:- 懒加载
    private lazy var presentModel : PresentModel = PresentModel()
    private lazy var zanAnimation : ZanAnimation = ZanAnimation()
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        netWork()
  }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
//        presentVCAction()
        
//        zanAnimationAction()
    }
    
}

// MARK:- 网络请求
extension ViewController {
    func netWork(){
        
        NetworkTools.shareInstance.loadData(.GET, urlString: "http://capi.douyucdn.cn/api/v1/getHotRoom/2") { (result) -> () in
            
            print(result)
        }

    }
}

// MARK:- 弹出控制器
extension ViewController {
    func presentVCAction() {
        
        let presentVC = PresentVC()
        presentVC.view.backgroundColor = UIColor.grayColor()
        presentVC.transitioningDelegate = presentModel
        presentVC.view.frame = CGRect(x: 100, y: 100, width: 200, height: 400)
        presentVC.modalPresentationStyle = .Custom
        presentModel.animationType = animation_Type.Scale
        presentViewController(presentVC, animated: true, completion: nil)

        
    }
}

// MARK:- 点赞动画
extension ViewController {
    
    func zanAnimationAction(){
        zanAnimation.startAnimation(view, center_X: 300, center_Y: 500)
    }
}