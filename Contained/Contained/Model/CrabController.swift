//
// CrabController.swift
// Contained
//
// Created by Joshua Kaunert on 11/08/18.
// Copyright © 2019 Joshua Kaunert. All rights reserved.
//

import UIKit

class CrabController {
    
    static let shared = CrabController()
    private init() {}
    
    var shouldRoll: Bool = false
    var shouldZoom: Bool = false
    var whichCrab: String = "WaitingCrab"
    
}
