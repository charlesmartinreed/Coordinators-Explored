//
//  Coordinator.swift
//  Coordinators Explored
//
//  Created by Charles Martin Reed on 2/11/19.
//  Copyright © 2019 Charles Martin Reed. All rights reserved.
//

import UIKit

protocol Coordinator: AnyObject { //coordinators should be Classes
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
