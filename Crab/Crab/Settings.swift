//
//  Settings.swift
//  Crab
//
//  Created by Sezen Bozdogan on 11.11.19.
//  Copyright © 2019 Özgün Yildiz. All rights reserved.
//


import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
