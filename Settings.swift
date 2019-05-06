//
//  File.swift
//  Contained-1
//
//  Created by Taylor Lyles on 4/29/19.
//  Copyright © 2019 Taylor Lyles. All rights reserved.
//

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
