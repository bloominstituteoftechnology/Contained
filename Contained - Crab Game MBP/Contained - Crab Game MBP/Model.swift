//
//  Model.swift
//  Contained - Crab Game MBP
//


import UIKit

class Model {
    // "Singleton Pattern" - create an instance of the Model itself with a static property
    static let shared = Model()
    // Enforce that we can only have one instance of our Model object
    private init() {}
    
    // Set the properties that will be implemented with the toggle switch to false
    var shouldRoll = false
    var shouldZoom = false
    
    // Set the property that will store the last position touched
    var lastPosition: CGPoint? = nil
    
    func updatePosition() {
        
    }
}
