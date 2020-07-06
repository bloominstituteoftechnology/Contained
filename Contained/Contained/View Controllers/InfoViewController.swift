//
//  InfoViewController.swift
//  Contained
//
//  Created by Bohdan Tkachenko on 4/22/20.
//  Copyright © 2020 Bohdan Tkachenko. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBAction func done(_ sender: UIStoryboardSegue) {
        //lcan do additional preperation
        navigationController?.popToRootViewController(animated: true)
    }

}
