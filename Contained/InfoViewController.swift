//
//  InfoViewController.swift
//  
//
//  Created by Nathan Hedgeman on 5/8/19.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

}
    
    //Brings the last ViewController of the Navigation Controller Back to the beganning
    @IBAction func doneButtonTapped(sender: AnyObject) {
        navigationController?.popToRootViewController(animated: true)
    }
    

}
