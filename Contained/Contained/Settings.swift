//
//  Settings.swift
//  Contained
//
//  Created by Dennis on 9/16/19.
//  Copyright © 2019 LambdaSchool. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldroll = false
    var shouldZoom = false
}
