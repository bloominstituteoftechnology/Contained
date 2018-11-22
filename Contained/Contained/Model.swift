//
//  Model.swift
//  Contained
//
//  Created by Sameera Leola on 11/14/18.
//  Copyright © 2018 Sameera Leola. All rights reserved.
//

import Foundation
import UIKit

class Model {
    static let shared = Model()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    
    let happyCrab: UIImage = UIImage(named: "happycrab000")!
    let waitingCrab: UIImage = UIImage(named: "waitingcrab000")!

    var whichCrab: String = "HappyCrab"
    
    func setCrab (_ crab: UIImage){
        //Select which crab to play
        whichCrab = (crab == happyCrab) ? "HappyCrab" : "WaitingCrab"
    }

    func getCrab() -> String {
        return whichCrab
    }
    
    //Saving last position
    //let frameSize: CGPoint = CGPoint(x: UIScreen.main.bounds.size.width*0.5,y: UIScreen.main.bounds.size.height*0.5)

    private(set) var lastPosition: CGPoint = CGPoint(x: UIScreen.main.bounds.size.width*0.5,y: UIScreen.main.bounds.size.height*0.5)
    
    func saveLastPosition (position: CGPoint) {
        lastPosition = position
    }
    
    func getLastPosition() -> CGPoint {
        return lastPosition
    }
    
    
}
