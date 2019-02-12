//
//  ViewController.swift
//  Coordinators Explored
//
//  Created by Charles Martin Reed on 2/11/19.
//  Copyright © 2019 Charles Martin Reed. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {

    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK:- IBActions
    
    @IBAction func purchaseTapped(_ sender: UIButton) {
        coordinator?.buyItem()
    }
    
    @IBAction func createAccountTapped(_ sender: UIButton) {
        coordinator?.createAccount()
    }
    
    

}

