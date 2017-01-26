//
//  AppDelegate.swift
//  JudexExampleMac
//
//  Created by Junior B. on 26.01.17.
//  Copyright © 2017 Bonto.ch. All rights reserved.
//

import Cocoa
import JudexOSX

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        Judex.shared.verbose = true
        Judex.shared.applicationBundleID = "com.apple.dt.Xcode" //XCode App
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

