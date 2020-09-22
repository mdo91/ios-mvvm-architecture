//
//  WelcomePageViewController.swift
//  RWClean
//
//  Created by Mdo on 21/09/2020.
//  Copyright © 2020 Mdo. All rights reserved.
//

import UIKit

class WelcomePageViewController: UIPageViewController, UIPageViewControllerDataSource {

    
    
    
    //MAKR: - Instance properties
    
    public let childIdentifiers = ["page1","page2","page3"]
    
    internal lazy var childPages : [UIViewController] = { [unowned self] in
        
        return self.childIdentifiers.map { indentifier in
            
            return self.storyboard!.instantiateViewController(withIdentifier:indentifier)
        }
        
    }()

    //MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupPager()

        // Do any additional setup after loading the view.
    }
    
    private func setupPager(){
        
        dataSource = self
        
        setViewControllers([childPages.first!], direction: .forward, animated: false, completion: nil)
        
    }

}

extension WelcomePageViewController{
    
    // protocols
     
     func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let currentIndex = childPages.firstIndex(of: viewController), currentIndex > 0 else{
            return nil
        }
        
        return childPages[currentIndex - 1]
     }
     
     func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
         
        guard let currentIndex = childPages.firstIndex(of: viewController), currentIndex < (childPages.count - 1) else {
            return nil
        }
        return childPages[currentIndex + 1]
     }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return childPages.count
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }
}
