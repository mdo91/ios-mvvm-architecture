//
//  HomeInfoViewController.swift
//  RWClean
//
//  Created by Mdo on 22/09/2020.
//  Copyright © 2020 Mdo. All rights reserved.
//

import UIKit

public protocol HomeInfoBuidlerDelegate: class{
    func homeInfoBuilderCompleted(_ homeInfo: HomeInfo)
}

class HomeInfoViewController: UIViewController {
    
    //MAKR: - Injections
    
    public var delegate: HomeInfoBuidlerDelegate!
    public var homeInfo: MutableHomeInfo!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    private func setupBackBarButtonItem(){
        
        let back = NSLocalizedString("back", comment: "")
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: back, style: .plain, target: nil, action: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let HomeInfoViewController = segue.destination as? HomeInfoViewController else { return }
        HomeInfoViewController.delegate = delegate
        HomeInfoViewController.homeInfo = homeInfo
        
    }


}
