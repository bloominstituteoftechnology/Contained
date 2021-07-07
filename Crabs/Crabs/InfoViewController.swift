//
//  InfoViewController.swift
//  Crabs
//
//  Created by Enzo Jimenez-Soto on 4/20/20.
//  Copyright © 2020 Enzo Jimenez-Soto. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    
    @IBAction func done(_ sender: Any) {
          navigationController?.popToRootViewController(animated: true)
      }

}
