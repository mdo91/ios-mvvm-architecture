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
        
        configureRootViewController()

        return true
    }
    private func configureRootViewController(){
        
         
       //  self.window = UIWindow(windowScene: windowScene!)
         self.window =  UIWindow(frame: UIScreen.main.bounds)
         let storyboard = UIStoryboard(name: "Welcome", bundle: nil)
         guard let rootVC = storyboard.instantiateViewController(identifier: "WelcomeViewController") as? WelcomeViewController else {
             print("ViewController not found")
             return
         }
         rootVC.delegate = self
        // let rootNC = UINavigationController(rootViewController: rootVC)
         self.window?.rootViewController = rootVC
         self.window?.makeKeyAndVisible()
    }
}
extension AppDelegate: WelcomeViewControllerDelegate{
    
    public func welcomeViewControllerPressed(_ controller: WelcomeViewController) {
        
        print("window!.bounds \(window!.bounds)")
        let newWindow = window
    
        let rootVC = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as! UISplitViewController
        
    
        newWindow!.rootViewController = rootVC
        
        newWindow!.makeKeyAndVisible()
        newWindow!.alpha = 0.0
 
        
        
        UIView.animate(withDuration: 0.33, animations: {
            
            newWindow!.alpha = 1.0
        }) { _ in
            self.window = newWindow
        }
    }
    
}






