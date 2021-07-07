//
//  Settings.swift
//  Contained
//
//  Created by Marlon Raskin on 6/10/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

import Foundation

class Settings {
	static let shared = Settings()
	private init() {}
	
	var shouldRoll = false
	var shouldZoom = false
	var crabFade: Float = 0.0
}
