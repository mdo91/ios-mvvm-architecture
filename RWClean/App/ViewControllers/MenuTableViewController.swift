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
        backButton.tintColor = .white
      navigationItem.backBarButtonItem = backButton
      navigationItem.backBarButtonItem = backButton
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        navigationController?.navigationBar.isHidden = false
        navigationController?.navigationBar.backgroundColor = .green

    }
    
    //MARK: - UITableViewDelegate
    
    private struct CellIdentifiers{
        
        static let products = "ProductsCell"
        static let homeInfo = "HomeInfoCell"
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        guard let cellIdentifier = tableView.cellForRow(at: indexPath)?.reuseIdentifier else { return
            
        }
        
        switch cellIdentifier {
        case CellIdentifiers.products: showCleaningServicseController()
        case CellIdentifiers.homeInfo: showHomeInfoController()
        default: break
        }
    }
    
    fileprivate func showCleaningServicseController(){
        
        let viewController = CleaningServicesBuilder.instantiateNavigationController()
        
        splitViewController?.showDetailViewController(viewController, sender: nil)
        
    }
    
    fileprivate func showHomeInfoController(){
        let viewController = HomeInfoBuilder.instantiateNavigationController(delegate: self)
        
        splitViewController!.showDetailViewController(viewController, sender: nil)
        
    }
    

}

extension MenuTableViewController : HomeInfoBuidlerDelegate{
    func homeInfoBuilderCompleted(_ homeInfo: HomeInfo) {
        navigationController?.viewControllers = [self]
        
        showCleaningServicseController()
    }
    
    
    
}
