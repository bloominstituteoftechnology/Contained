//
//  InfoViewController.swift
//  Contained
//
//  Created by LambdaSchoolVM_Catalina on 12/4/19.
//  Copyright © 2019 Sal Amer. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
//IB Actions
    @IBAction func doneBtnPressed(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    

}
