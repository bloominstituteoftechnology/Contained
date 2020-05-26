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
    
    struct happyCrabInfo {
        
    }
    
    //Create an array of the happy and waiting crab images to animate on the settings screen
    
    //Add the images to the array
    func createImageArrays(numOfImages: Int, namePrefix: String) -> [UIImage]{
        var animateImages: [UIImage] = []
        
        for nextImage in 0 ..< numOfImages {
            var imageName = ""
            if (nextImage < 10) {
                imageName = "\(namePrefix)00\(nextImage).png"
            }
            else {
                imageName = "\(namePrefix)0\(nextImage).png"
            }
            let crabImage = UIImage(named: imageName)!
            animateImages.append(crabImage)
        }
        
        return animateImages
    }
    
    func getHappyCrabName() -> String {
        return "happycrab000"
    }
    
    func getWaitingCrabName() -> String {
        return "waitingcrab000"
    }
    
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
