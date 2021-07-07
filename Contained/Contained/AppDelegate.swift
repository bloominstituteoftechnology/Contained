//
//  AppDelegate.swift
//  Contained
//
//  Created by Alex Shillingford on 6/10/19.
//  Copyright © 2019 Alex Shillingford. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, shouldSaveApplicationState coder: NSCoder) -> Bool {
        return true
    }
}

