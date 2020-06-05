//
//  InfoViewController.swift
//  Contained
//
//  Created by John McCants on 6/3/20.
//  Copyright © 2020 John McCants. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    var label : UILabel!
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
