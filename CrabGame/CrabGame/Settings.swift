//
//  Settings.swift
//  CrabGame
//
//  Created by Jonathan Ferrer on 4/29/19.
//  Copyright © 2019 Jonathan Ferrer. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false{
        didSet{
            print("shouldRoll is toggled")
        }
    }
    var shouldZoom = false{
        didSet{
            print("shouldZoom is toggled")
        }
    }
    var shouldFade = false{
        didSet{
            print("shouldFade is toggled")
        }
    }
}
