//
//  InfoViewController.swift
//  Crabs
//
//  Created by William Chen on 8/19/19.
//  Copyright © 2019 William Chen. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    var label = UILabel(frame: CGRect(x: 0, y: 0, width: 160, height: 80))
    @IBAction func unwindToInfo(_ sender: UIStoryboardSegue){
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
   
            
        
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
