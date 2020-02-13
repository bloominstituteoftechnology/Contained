//
//  InfoViewController.swift
//  Container
//
//  Created by Bree Jeune on 2/13/20.
//  Copyright © 2020 Young. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBAction func unwindToMainInfoScreen(_ sender: UIStoryboardSegue) {
          navigationController?.popToRootViewController(animated: true)
      }
    
}

