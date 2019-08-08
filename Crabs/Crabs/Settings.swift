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
    
    enum CrabType: String, CaseIterable {
        case happy = "HappyCrab"
        case waiting = "WaitingCrab"
    }
    
    var shouldRoll = false
    var shouldZoom = false
    var lastPosition: CGPoint?
    var crabType: CrabType = .waiting
    
}
