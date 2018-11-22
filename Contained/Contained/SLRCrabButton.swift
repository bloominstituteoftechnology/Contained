//
//  SLRCrabButton.swift
//  Contained
//
//  Created by Sameera Leola on 11/22/18.
//  Copyright © 2018 Sameera Leola. All rights reserved.
//

import UIKit

class SLRCrabButton: UIButton {
    
    var isOn = false
    
    //Choclate brown = rgb(210,105,30)
    let brownBorder = UIColor(red: 210.0/255.0, green: 105.0/255.0, blue: 30.0/255.0, alpha: 1.0)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initButton()
    }
    
    func initButton() {
        //layer.borderWidth = 2.0
        layer.borderColor = brownBorder.cgColor
        //layer.cornerRadius = frame.size.height/2
        addTarget(self, action: #selector(SLRCrabButton.buttonPressed), for: .touchUpInside)
        
    }
    
    @objc func buttonPressed() {
        setCrabImage(bool: !isOn)
    }
    
    func setCrabImage(bool: Bool){
        //Capture the button toggle (on or off)
        isOn = bool
        
        //Clear the question mark
        setTitle("", for: .normal)
        //Set the button image
        let crabImage = bool ? "waitingcrab000" : "happycrab000"
        setBackgroundImage(UIImage(named: crabImage), for: .normal)
        Model.shared.setCrab(UIImage(named: crabImage)!)
    }

}
