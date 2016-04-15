//
//  ViewController.swift
//  LaunchDemo
//
//  Created by 卢良潇 on 16/4/15.
//  Copyright © 2016年 卢良潇. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        launchAnimation()
    }

    private func launchAnimation()
    {
        
        let vc = UIStoryboard(name: "LaunchScreen", bundle: nil).instantiateViewControllerWithIdentifier("Launch")
        let launchview = vc.view
        let delegate = UIApplication.sharedApplication().delegate
        let mainWindow = delegate?.window
        mainWindow!!.addSubview(launchview)
        
        
        UIView.animateWithDuration(1, delay: 0.5, options: UIViewAnimationOptions.BeginFromCurrentState, animations: {
            launchview.alpha = 0.0
            launchview.layer.transform = CATransform3DScale(CATransform3DIdentity, 1.5, 1.5, 1.0)
        }) { (finished) in
            launchview.removeFromSuperview()
        }
        
        
        
    }
    
}

