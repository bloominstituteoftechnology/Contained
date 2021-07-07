//
//  Model.swift
//  Contained
//
//  Created by Jocelyn Stuart on 1/9/19.
//  Copyright © 2019 JS. All rights reserved.
//

import Foundation

class Model {
    static let shared = Model()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    
}
