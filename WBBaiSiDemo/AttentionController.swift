//
//  AttentionController.swift
//  WBBaiSiDemo
//
//  Created by caowenbo on 16/1/20.
//  Copyright © 2016年 曹文博. All rights reserved.
//

import UIKit

class AttentionController: UIViewController {

    override func viewDidLoad() {
        
        navigationItem.title = "我的关注"

        navigationItem.leftBarButtonItem = Common.itemWithImage(UIImage.init(named:"friendsRecommentIcon")!,highlightImage:UIImage.init(named: "friendsRecommentIcon-click")!, target: self, action: "pushToRecommend")

        view.backgroundColor = WBBgColor
    }
    
    @IBAction func login() {
        
        let loginVC = LoginController()
        
        loginVC.transitioningDelegate = self
        
        presentViewController(loginVC, animated: true, completion: nil)
    }
    
    func pushToRecommend() {
        navigationController?.pushViewController(RecommendController(), animated: true)
    }
        

}

extension AttentionController:UIViewControllerTransitioningDelegate{
    
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning?{
        return Animater()
    }
    


    
}