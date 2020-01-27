//
//  FirstInfoVC.swift
//  CrabGame
//
//  Created by Nick Nguyen on 1/27/20.
//  Copyright © 2020 Nick Nguyen. All rights reserved.
//

import UIKit

class FirstInfoVC: UIViewController {
    let crabLabel : UILabel = {
           let lb = UILabel()
           lb.text = "Crabs"
           lb.font = UIFont.boldSystemFont(ofSize: 48)
           lb.translatesAutoresizingMaskIntoConstraints = false
           return lb
       }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(crabLabel)
          
              crabLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
              crabLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
      
    }
    

    

}
