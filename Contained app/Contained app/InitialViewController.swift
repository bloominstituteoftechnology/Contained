//
//  InitialViewController.swift
//  Contained app
//
//  Created by Drew Miller on 5/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class InitialViewController: InfoViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   @IBAction func done(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
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
