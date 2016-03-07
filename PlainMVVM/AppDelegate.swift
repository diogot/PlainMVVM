//
//  AppDelegate.swift
//  PlainMVVM
//
//  Created by Diogo Tridapalli on 2/29/16.
//  Copyright © 2016 Diogo Tridapalli. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        let window = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.window = window

        let viewController = ViewController()
        window.rootViewController = viewController
        window.makeKeyAndVisible()

        return true
    }

}

