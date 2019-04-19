//
//  AppDelegate.swift
//  UiltKit
//
//  Created by 籍孟飞 on 01/07/2019.
//  Copyright (c) 2019 籍孟飞. All rights reserved.
//

import UIKit
import UiltKit
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let t = "123".ut.isValidateEmail()
        print("==\(t)")
        return true
    }
}

