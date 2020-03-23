//
//  InfoViewController.swift
//  movingCrabGame
//
//  Created by Hunter Oppel on 3/23/20.
//  Copyright © 2020 LambdaSchool. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBAction func done(_ sender: UIStoryboardSegue) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
