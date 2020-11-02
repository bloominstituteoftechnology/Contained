//
//  FirstInfoVC.swift
//  CrabGame
//
//  Created by Nick Nguyen on 1/27/20.
//  Copyright © 2020 Nick Nguyen. All rights reserved.
//

import UIKit

class SecondInfoVC: UIViewController {
   
    let tapLabel : UILabel = {
       let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text = """
        Tap to move
        the crab
        """
        lb.numberOfLines = 2
        lb.textAlignment = .center
        lb.font = UIFont.systemFont(ofSize: 24)
        return lb
    }()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.addSubview(tapLabel)
        tapLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        tapLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
       
        
    }
    

    

}
