//
//  MainTabBarController.swift
//  Coordinators Explored
//
//  Created by Charles Martin Reed on 2/12/19.
//  Copyright © 2019 Charles Martin Reed. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    //MARK:- Properties for each coordinator used inside the tabs
    let main = MainCoordinator(navigationController: UINavigationController())
    let buy = BuyCoordinator(navigationController: UINavigationController())
    let create = CreateCoordinator(navigationController: UINavigationController())
    
    override func viewDidLoad() {
        super.viewDidLoad()
         //call start on each coordinator so they can set up their basic view controllers
        //vc property of tab bar should be an array of all the tabs
        //NOTE: EACH VIEW CONTROLLER NEEDS A TAB BAR ITEM
        main.start()
        buy.start()
        create.start()
        
        viewControllers = [main.navigationController, buy.navigationController, create.navigationController]

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
