//
//  InfoViewController.swift
//  Contained
//
//  Created by Andrew Ruiz on 7/22/19.
//  Copyright © 2019 Andrew Ruiz. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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
    
    @IBAction func unwindToInfo(_ sender: UIStoryboardSegue) {
        navigationController?.popToRootViewController(animated: true)

    }

}
