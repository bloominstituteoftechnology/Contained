//
//  Model.swift
//  ContainedApp
//
//  Created by Nelson Gonzalez on 1/9/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import Foundation

class Model {
    static let shared = Model()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    
}
