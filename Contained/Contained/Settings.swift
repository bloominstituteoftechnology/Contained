//
//  Settings.swift
//  Contained
//
//  Created by Jeremy Taylor on 2/2/19.
//  Copyright © 2019 Bytes-Random L.L.C. All rights reserved.
//

import UIKit

class Settings {
    static let shared = Settings()
    var shouldRoll = false
    var shouldZoom = false
    var waitingCrab = false
    var lastPosition: CGPoint?
}
