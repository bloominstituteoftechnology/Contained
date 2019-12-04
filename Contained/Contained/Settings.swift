//
//  Settings.swift
//  Contained
//
//  Created by LambdaSchoolVM_Catalina on 12/4/19.
//  Copyright © 2019 Sal Amer. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
