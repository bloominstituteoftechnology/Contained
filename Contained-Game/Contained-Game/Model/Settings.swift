//
//  Settings.swift
//  Contained-Game
//
//  Created by Marlon Raskin on 7/22/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

import Foundation
import SpriteKit


class Settings {

	static let shared = Settings()


	private init() {}

	var shouldRoll = false
	var shouldZoom = false
	var alpha: Float = 1
	var crabIsHappy = true

}
