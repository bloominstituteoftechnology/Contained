//
//  InfoViewController.swift
//  Contained
//
//  Created by Rick Wolter on 10/14/19.
//  Copyright © 2019 Richar Wolter. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    
    
    
    
    let label = UILabel(frame:(CGRect(x:0,y:0,width:160, height: 80)))
    
    
    
    override func viewWillAppear(_ animated: Bool) {
         if let number = navigationController?.viewControllers.count {
                   label.text = String(number)
               }
               
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

         view.addSubview(label)
               
               label.textColor = .white
               label.textAlignment = .center
               label.font = UIFont.boldSystemFont(ofSize: 64)
               label.center = view.center
    }
    

    
    @IBAction func done(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
}
