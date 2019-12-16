//
//  InfoViewController.swift
//  Crab
//
//  Created by Ufuk Türközü on 16.12.19.
//  Copyright © 2019 Ufuk Türközü. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func done(_ sender: Any) {
         navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func unwindToRed(_ sender: UIStoryboardSegue) {
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
