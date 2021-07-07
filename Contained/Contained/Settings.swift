//
//  Settings.swift
//  Contained
//
//  Created by Ryan Murphy on 5/6/19.
//  Copyright © 2019 Ryan Murphy. All rights reserved.
//

import Foundation


class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    var shouldScream = false
    var sadCrab = false
}
