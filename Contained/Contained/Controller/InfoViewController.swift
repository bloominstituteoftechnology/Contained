//
//  InfoViewController.swift
//  Contained
//
//  Created by Lambda_School_loaner_226 on 12/16/19.
//  Copyright © 2019 JamesMcDougall. All rights reserved.
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

    @IBAction func done(_ sender: Any)
    {
        navigationController?.popViewController(animated: true)
    }
    
}
