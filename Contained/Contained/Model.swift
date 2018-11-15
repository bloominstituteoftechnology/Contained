//
//  Model.swift
//  Contained
//
//  Created by Sameera Leola on 11/14/18.
//  Copyright © 2018 Sameera Leola. All rights reserved.
//

import Foundation

class Model {
    static let shared = Model()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    
}
