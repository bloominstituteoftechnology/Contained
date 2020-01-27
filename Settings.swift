//
//  Settings.swift
//  Contained
//
//  Created by Lambda_School_Loaner_268 on 1/27/20.
//  Copyright © 2020 Jeremiah. All rights reserved.
//

import Foundation
class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
