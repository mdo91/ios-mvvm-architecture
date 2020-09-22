//
//  AppDelegate.swift
//  RWClean
//
//  Created by Mdo on 20/09/2020.
//  Copyright © 2020 Mdo. All rights reserved.
//

import UIKit

@UIApplicationMain
public final class AppDelegate: UIResponder, UIApplicationDelegate {


    public var window: UIWindow?

    public func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
       // configureRootViewController()
        return true
    }
    
//    private func configureRootViewController(){
//
//       if let viewController = window?.rootViewController as? WelcomeViewController{
//
//            let storyboard = UIStoryboard(name: "Welcome", bundle: nil)
//            let vc = storyboard.instantiateViewController(identifier: "WelcomeViewController")
//
//
//              viewController.delegate = self
//
//        }
//
//
//    }
    
    

    
    


}
//extension AppDelegate: WelcomeViewControllerDelegate{
//
//    public func welcomeViewControllerPressed(_ controller: WelcomeViewController) {
//        let newWindow = UIWindow(frame: window!.bounds)
//        newWindow.rootViewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()
//        newWindow.makeKeyAndVisible()
//        newWindow.alpha = 0.0
//
//
//        UIView.animate(withDuration: 0.33, animations: {
//
//            newWindow.alpha = 1.0
//        }) { _ in
//            self.window = newWindow
//        }
//    }
//
//}


