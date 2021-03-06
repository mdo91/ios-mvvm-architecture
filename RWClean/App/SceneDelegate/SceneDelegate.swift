//
//  SceneDelegate.swift
//  RWClean
//
//  Created by Mdo on 20/09/2020.
//  Copyright © 2020 Mdo. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    

    var window: UIWindow?
    var windowScene: UIWindowScene?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let _ = (scene as? UIWindowScene) else { return }
        
         windowScene = UIWindowScene(session: session, connectionOptions: connectionOptions)

        
        configureRootViewController()
    }
    
    private func configureRootViewController(){
        
         
       //  self.window = UIWindow(windowScene: windowScene!)
         //self.window =  UIWindow(frame: UIScreen.main.bounds)
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
    


    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}
extension SceneDelegate: WelcomeViewControllerDelegate{
    
    public func welcomeViewControllerPressed(_ controller: WelcomeViewController) {
        
        print("window!.bounds \(window!.bounds)")
        let newWindow = UIWindow(windowScene: windowScene!)
    
        let rootVC = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()

        newWindow.rootViewController = rootVC
        
        newWindow.makeKeyAndVisible()
        newWindow.alpha = 0.0
 
        
        
        UIView.animate(withDuration: 0.33, animations: {
            
            newWindow.alpha = 1.0
        }) { _ in
            self.window = newWindow
        }
    }
    
}

