//
//  Settings.swift
//  Contained
//
//  Created by Victor  on 4/29/19.
//  Copyright © 2019 com.Victor. All rights reserved.
//

import Foundation

//model
class Settings {
    //create instance of the model itself
    static let shared = Settings()
    //only one instance
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
