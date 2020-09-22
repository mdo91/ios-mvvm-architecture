//
//  HomeInfoBuilder.swift
//  RWClean
//
//  Created by Mdo on 22/09/2020.
//  Copyright © 2020 Mdo. All rights reserved.
//

import Foundation
import UIKit

class HomeInfoBuilder {
    public class func instantiateNavigationController(delegate: HomeInfoBuidlerDelegate)-> UINavigationController{
        
        let bundle = Bundle(for: HomeInfoBuilder.self)
        
        let storyboard = UIStoryboard(name: "HomeInfoBuilder", bundle: bundle)
        
        let navigationController = storyboard.instantiateInitialViewController() as! UINavigationController
        
        let viewController = navigationController.topViewController as! HomeInfoViewController
        
        viewController.delegate = delegate
        viewController.homeInfo = MutableHomeInfo()
        
        return navigationController
        
        
    }
}
