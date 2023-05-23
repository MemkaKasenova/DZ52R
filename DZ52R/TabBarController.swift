//
//  TabBarController.swift
//  DZ52R
//
//  Created by merim kasenova on 23/5/23.
//

import UIKit

class TabBar: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupChildViewControllers()
    }
    private func setupChildViewControllers() {
        let mainViewController = ViewController()
        let mainIcon = UIImage(systemName: "house.fill")
        
        viewControllers = [
            generateNavigatonController(
            rootViewController: mainViewController,
            image: mainIcon!),
        ]
    }
    
    func generateNavigatonController(rootViewController:
         UIViewController, image: UIImage) -> UIViewController {
        let navigaionController = UINavigationController(
            rootViewController: rootViewController)
        navigaionController.tabBarItem.image = image
        return navigaionController
    }
}
