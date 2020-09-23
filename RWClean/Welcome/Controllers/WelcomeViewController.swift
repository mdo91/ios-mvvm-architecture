//
//  WelcomeViewController.swift
//  RWClean
//
//  Created by Mdo on 21/09/2020.
//  Copyright © 2020 Mdo. All rights reserved.
//

import UIKit

public protocol WelcomeViewControllerDelegate: class{
    
    func welcomeViewControllerPressed(_ controller:WelcomeViewController)
}

public class WelcomeViewController: UIViewController {
    
    
    
    @IBOutlet internal var imageView: UIImageView!
    
    //MARK: - Injections
    
    public var delegate: WelcomeViewControllerDelegate?
    
    
    public override var preferredStatusBarStyle: UIStatusBarStyle{
        
        return .lightContent
    }
    
    internal let  imagesNames : [String] = ["mop","toothbrushing_frog","towels"]
    
    internal var index = 0
    
    internal var timer: Timer?
    
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        timer = Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(updateImageView), userInfo: nil, repeats: true)
    }
    
    
    
    public override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.isHidden = false
    }
    
    @objc internal func updateImageView(_ timer: Timer){
        
        index = (index + 1) < imagesNames.count ? (index + 1) : 0
        
        imageView.image = UIImage(named: imagesNames[index], in: Bundle(for: type(of: self)), compatibleWith: nil)
        
        
    }
    
    
    
    @IBAction func doneButtonPressed(_ sender: Any) {
        delegate?.welcomeViewControllerPressed(self)
    }
    

    

}
