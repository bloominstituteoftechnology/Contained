//
//  SecondInfoVC.swift
//  CrabGame
//
//  Created by Nick Nguyen on 1/27/20.
//  Copyright © 2020 Nick Nguyen. All rights reserved.
//

import UIKit

class ThirdInfoVC: UIViewController {
 
    let playLabel : UILabel = {
        let lb = UILabel()
        lb.text = "Let's play"
        lb.font = UIFont.systemFont(ofSize: 24)
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.numberOfLines = 0
        lb.textAlignment = .center
        return lb
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(playLabel)
        playLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        playLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    @IBAction func doneTapped(_ sender: UIBarButtonItem) {
        navigationController?.popToRootViewController(animated: true)
    }
    
  

}
