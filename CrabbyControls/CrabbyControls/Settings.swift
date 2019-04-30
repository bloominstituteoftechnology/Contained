//
//  Settings.swift
//  CrabbyControls
//
//  Created by Michael Redig on 4/29/19.
//  Copyright © 2019 Michael Redig. All rights reserved.
//

import UIKit

class Settings {
	
	var shouldRoll = false
	var shouldZoom = false
	var heartAttackMode = false
	var lastTouch: CGPoint? = nil
}

protocol SettingsProtocol: class {
	var settings: Settings? { get set }
}
