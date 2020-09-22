//
//  CleaningServicesBuilder.swift
//  RWClean
//
//  Created by Mdo on 22/09/2020.
//  Copyright © 2020 Mdo. All rights reserved.
//

import Foundation
import UIKit

public class CleaningServicesBuilder {
    
    public class func instantiateNavigationController() -> UINavigationController{
        
        let bundle = Bundle(for: self)
        
        let storyboard = UIStoryboard(name: "CleaningServices", bundle: bundle)
        
        let navigationController = storyboard.instantiateInitialViewController() as! UINavigationController
        
        return navigationController
    }
    
}
