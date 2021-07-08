//
//  Model.swift
//  iOS5-VTD-Contained
//
//  Created by Vijay Das on 1/9/19.
//  Copyright © 2019 Vijay Das. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    var fadeInAndOut = false
   
    
}
