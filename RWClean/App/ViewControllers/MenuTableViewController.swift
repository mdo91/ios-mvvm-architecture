//
//  MenuTableViewController.swift
//  RWClean
//
//  Created by Mdo on 20/09/2020.
//  Copyright © 2020 Mdo. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configureBackButton()
        configureTableView()
    }
    
    private func configureTableView() {
       tableView.tableFooterView = UIView()
     }
    
    private func configureBackButton() {
      let image = UIImage(named: "menu")!
      let backButton = UIBarButtonItem(image: image, style: .done, target: nil, action: nil)
      navigationItem.backBarButtonItem = backButton
      navigationItem.backBarButtonItem = backButton
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        navigationController?.navigationBar.isHidden = false
    }
    
    
    
    



}
