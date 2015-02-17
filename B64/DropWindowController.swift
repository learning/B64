//
//  WindowController.swift
//  B64
//
//  Created by Learning on 15/2/17.
//  Copyright (c) 2015年 Learning. All rights reserved.
//

import Cocoa

class DropWindowController: NSWindowController {
    
    var center:NSNotificationCenter = NSNotificationCenter.defaultCenter()

    override func windowDidLoad() {
        super.windowDidLoad()
        center.addObserver(self, selector: "showAgain:", name: "showAgainNotification", object: nil)
    }
    
    func showAgain(notification: NSNotification) {
        self.window?.makeKeyAndOrderFront(self)
    }

}
