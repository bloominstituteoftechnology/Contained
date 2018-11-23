//  SettingsViewController.swift
//  Contained
//
//  Created by Sameera Leola on 11/14/18.
//  Copyright © 2018 Sameera Leola. All rights reserved.
//  Modified by Sameera Leola on 11/21/2018 - Added crab selection
//

import UIKit

class SettingsViewController: UIViewController {
    var isOn = false
    
    //Arrays to hold the crab images to be animated
    var happyImages: [UIImage] = [] //There are 24 images format: "%02d"
    var waitingImages: [UIImage] = [] //There are 22 images
    
   override func viewDidLoad() {
        super.viewDidLoad()
    
        //Populate the animation arrays
        happyImages = Model.shared.createImageArrays(numOfImages: 24, namePrefix: "happycrab")

        waitingImages = Model.shared.createImageArrays(numOfImages: 22, namePrefix: "waitingcrab")
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Model.shared.shouldRoll = sender.isOn ? true : false
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Model.shared.shouldZoom = sender.isOn ? true : false
    }
    
    @IBAction func pickCrab(_ sender: UIButton) {
        //Button push flag
        isOn = !isOn
        
        //Select the crab image to display on the button
        //let crabToUse = isOn ? "waitingcrab000" : "happycrab000"
        let crabToUse = isOn ? Model.shared.getWaitingCrabName() : Model.shared.getHappyCrabName()
        
        //Display the first image on the button
        sender.setBackgroundImage(UIImage(named: crabToUse), for: .normal)

        //Select the crab image to play with(named: crabToUse!, for: .normal)
        Model.shared.setCrab(UIImage(named: crabToUse)!)
    }
}
