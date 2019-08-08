//
//  Settings.swift
//  Crabs
//
//  Created by Joel Groomer on 8/6/19.
//  Copyright © 2019 Julltron. All rights reserved.
//

import Foundation
import UIKit

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    var lastPosition: CGPoint?
}
