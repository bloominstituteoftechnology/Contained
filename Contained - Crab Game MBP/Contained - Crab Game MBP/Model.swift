//
//  Model.swift
//  Contained - Crab Game MBP
//
//  Created by Audrey Seversen on 11/14/18.
//  Copyright © 2018 Audrey Welch. All rights reserved.
//

import Foundation

class Model {
    // "Singleton Pattern" - create an instance of the Model itself with a static property
    static let shared = Model()
    // Enforce that we can only have one instance of our Model object
    private init() {}
    
    // Set the properties that will be implemented with the toggle switch to false
    var shouldRoll = false
    var shouldZoom = false
}
