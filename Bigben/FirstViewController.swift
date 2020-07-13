//
//  ViewController.swift
//  Bigben
//
//  Created by apple on 03/07/20.
//  Copyright © 2020 muffi. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
 @IBOutlet var starButtons: UIButton!
    @IBOutlet var winnerSelector: UIButton!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        starButtons.layer.cornerRadius = 20
        winnerSelector.layer.cornerRadius = 20
    }


}

