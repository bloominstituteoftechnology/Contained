//
//  Settings.swift
//  Contained
//
//  Created by Lambda_School_loaner_226 on 12/16/19.
//  Copyright © 2019 JamesMcDougall. All rights reserved.
//

import UIKit

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
