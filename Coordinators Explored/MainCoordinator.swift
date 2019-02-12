//
//  MainCoordinator.swift
//  Coordinators Explored
//
//  Created by Charles Martin Reed on 2/11/19.
//  Copyright © 2019 Charles Martin Reed. All rights reserved.
//

import UIKit

class MainCoordinator: NSObject, Coordinator, UINavigationControllerDelegate {
    //MARK:- Handling navigation by making coordinator detect interactions with navController directly
    
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController.instantiate()
        vc.coordinator = self
        navigationController.delegate = self

        navigationController.pushViewController(vc, animated: false)
    }
    
    func buyItem() {
        //making a child coordinator and assigning control to it
       let child = BuyCoordinator(navigationController: navigationController)
        child.parentCoordinator = self
        childCoordinators.append(child)
        child.start()
    }
    
    func createAccount() {
        let vc = CreateAccountViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    //MARK:- Navigation detection/handling
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        //called by delegate when view controller has been shown
        
        guard let fromVC = navigationController.transitionCoordinator?.viewController(forKey: .from) else { return }
        
        //if vc array already has fromVC it its content, it's a push operation for a differnt view controller
        if navigationController.viewControllers.contains(fromVC) {
             return
        }
        
        if let buyItemVC = fromVC as? BuyItemViewController {
            childDidFinish(buyItemVC.coordinator!)
        }
    }
    
    func childDidFinish(_ child: Coordinator) {
        for (index, coordinator) in childCoordinators.enumerated() {
            //identity operator, check if two class instances point to the same memory, i.e, if they are the same object
            if coordinator === child {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
}
