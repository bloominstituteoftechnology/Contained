//
//  Settings.swift
//  Contained
//
//  Created by Kenny on 12/16/19.
//  Copyright © 2019 Hazy Studios. All rights reserved.
//

import Foundation
import UIKit //access to CGFloat (could also convert elsewhere)

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    var fade:CGFloat = 1
    var lastPosition = CGPoint(x: 0, y: 0)
}
