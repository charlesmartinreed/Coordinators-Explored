//
//  CreateCoordinator.swift
//  Coordinators Explored
//
//  Created by Charles Martin Reed on 2/12/19.
//  Copyright © 2019 Charles Martin Reed. All rights reserved.
//

import UIKit

class CreateCoordinator: Coordinator {
    weak var parentCoordinator: MainCoordinator?
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = CreateAccountViewController.instantiate()
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 2)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
        
    }
}
