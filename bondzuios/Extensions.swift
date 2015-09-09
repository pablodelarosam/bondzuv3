//
//  NavControllerExtension.swift
//  bondzuios
//
//  Created by Luis Mariano Arobes on 18/08/15.
//  Copyright (c) 2015 Bondzu. All rights reserved.
//

import Foundation
import UIKit

/*extension UINavigationController {
    public override func supportedInterfaceOrientations() -> Int {
        return visibleViewController.supportedInterfaceOrientations()
    }
    
}*/

extension UINavigationController {
    
    public override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return visibleViewController!.supportedInterfaceOrientations()
    }
    public override func shouldAutorotate() -> Bool {
        return visibleViewController!.shouldAutorotate()
    }
    
    public override func childViewControllerForStatusBarHidden() -> UIViewController? {
        return self.topViewController
    }
    
    public override func childViewControllerForStatusBarStyle() -> UIViewController? {
        return self.topViewController
    }
}

extension UITabBarController {
    public override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        if let selected = selectedViewController {
            return selected.supportedInterfaceOrientations()
        }
        return super.supportedInterfaceOrientations()
    }
    public override func shouldAutorotate() -> Bool {
        if let selected = selectedViewController {
            return selected.shouldAutorotate()
        }
        return super.shouldAutorotate()
    }
    
    public override func prefersStatusBarHidden() -> Bool {
        if let vc = selectedViewController{
            return vc.prefersStatusBarHidden()
        }
        
        return false
    }
    
    public override func childViewControllerForStatusBarHidden() -> UIViewController? {
        return self.selectedViewController
    }
    
    public override func childViewControllerForStatusBarStyle() -> UIViewController? {
        return self.selectedViewController
    }
}

extension UIAlertController {
    public override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.Portrait
    }
    public override func shouldAutorotate() -> Bool {
        return false
    }
}
