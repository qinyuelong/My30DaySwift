//
//  TransitionManager.swift
//  Project 12 - Tumblr
//
//  Created by LinkE on 2019/1/31.
//  Copyright © 2019年 dev. All rights reserved.
//

import UIKit

class TransitionManager: NSObject {
    
    fileprivate var presenting = false
}

extension TransitionManager: UIViewControllerAnimatedTransitioning {
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.5
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        let container = transitionContext.containerView
        
        let screens: (from:UIViewController, to: UIViewController) = (transitionContext.viewController(forKey: .from)!, transitionContext.viewController(forKey: .to)!)
        
        let menuViewController = !self.presenting ? screens.from as! MenuViewController : screens.to as! MenuViewController
        let bottomViewController = !self.presenting ? screens.to as UIViewController : screens.from as UIViewController
        
        let menuView = menuViewController.view
        let botomView = bottomViewController.view
        
        if self.presenting {
            
        }
        
        container.addSubview(botomView!)
        container.addSubview(menuView!)
        
        let duration = self.transitionDuration(using: transitionContext)
        
        UIView.animate(withDuration: duration, delay: 0.0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.8, options: [], animations: {
            if (self.presenting) {
//                self.onstage
            }
        
        }) { (finished) in
            
        }
        
    }
    
    
    func onStageMenuController(_ menuViewController: MenuViewController) {
        menuViewController.view.alpha = 1
        
        
    }
    
}


extension TransitionManager: UIViewControllerTransitioningDelegate {
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        self.presenting = true
        return self
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        self.presenting = false
        return self
    }
}
