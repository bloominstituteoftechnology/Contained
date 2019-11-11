//
//  InfoViewController.swift
//  Crab
//
//  Created by Ufuk Türközü on 11.11.19.
//  Copyright © 2019 Ufuk Türközü. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
//    let label = UILabel()

    @IBAction func done(_ sender: Any) {
    navigationController?.popToRootViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    /*    view.addSubview(label)
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 48)
        label.center = view.center
    */
        // Do any additional setup after loading the view.
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
