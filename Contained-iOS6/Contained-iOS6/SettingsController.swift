//
//  SettingsController.swift
//  Contained-iOS6
//
//  Created by Hector Steven on 4/29/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit

class SettingsController {
	
	func happyCrabtoggle() {
		setting.happyCrab.toggle()
	}
	func fadeToggle() {
		
		setting.shouldFade.toggle()
	}
	
	func setPosition(_ x: CGFloat, _ y: CGFloat) {
		setting.position_x = x
		setting.position_y = y
	}
	
	func rollToggle() {
		setting.shouldRoll.toggle()
	}
	
	func zoomToggle() {
		setting.shouldZoom.toggle()
	}
	
	var setting = Settings()
}
