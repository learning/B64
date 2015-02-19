//
//  AppDelegate.swift
//  B64
//
//  Created by Learning on 15/2/16.
//  Copyright (c) 2015年 Learning. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var center:NSNotificationCenter = NSNotificationCenter.defaultCenter()

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
//        var item:NSStatusItem = NSStatusBar.systemStatusBar().statusItemWithLength(CGFloat(NSVariableStatusItemLength))

    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    func applicationShouldHandleReopen(sender: NSApplication, hasVisibleWindows flag: Bool) -> Bool {
        if (!flag) {
            center.postNotificationName("showAgainNotification", object: nil)
        }
        return true
    }
}

