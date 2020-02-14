//
//  Settings.swift
//  Contained
//
//  Created by Chad Parker on 2020-02-12.
//  Copyright © 2020 Chad Parker. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}

    var shouldRoll = false
    var shouldZoom = false
    var crabIsHappy = true
}
