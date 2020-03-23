//
//  Settings.swift
//  Contained
//
//  Created by Violet Lavender Love on 3/23/20.
//  Copyright © 2020 Love. All rights reserved.
//

import Foundation

class Settings {
   static let shared = Settings()
   private init() {}
   
   var shouldRoll = false
   var shouldZoom = false
}

