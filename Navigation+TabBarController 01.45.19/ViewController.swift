//
//  ViewController.swift
//  Navigation+TabBarController
//
//  Created by Mihail Costraci on 4/5/16.
//  Copyright © 2016 Mihail Costraci. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var pushButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pushButton.addTarget(self, action: #selector(self.openController), forControlEvents: .TouchUpInside)
        

    }

    func openController() -> () {
        
        var mainStoryBoard:UIStoryboard
        var uitabBar:UITabBarController
        
        mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        
        let secondVC = mainStoryBoard.instantiateViewControllerWithIdentifier("SecondVCViewControllerID") as! SecondVCViewController
        let thirdV = mainStoryBoard.instantiateViewControllerWithIdentifier("ThirdVCID") as! ThirdVC
        
        
        uitabBar = UITabBarController()
        uitabBar.viewControllers = [secondVC, thirdV]
        self.navigationController?.pushViewController(uitabBar, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

