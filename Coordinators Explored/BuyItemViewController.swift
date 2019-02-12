//
//  BuyItemViewController.swift
//  Coordinators Explored
//
//  Created by Charles Martin Reed on 2/11/19.
//  Copyright © 2019 Charles Martin Reed. All rights reserved.
//

import UIKit

class BuyItemViewController: UIViewController, Storyboarded {

    //weak var coordinator: BuyCoordinator?
    weak var coordinator: BuyCoordinator?
    var selectedProduct = 0 //provide value when when vc is created
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//        coordinator?.didFinishBuying()
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
