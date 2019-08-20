//
//  InfoViewController.swift
//  CrabGame
//
//  Created by Jordan Christensen on 8/20/19.
//  Copyright © 2019 Mazjap Co Technologies. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        CustomScene.sharedCrabCS.returnToMid()
        CustomScene.sharedCrabCS.timer.invalidate()
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
