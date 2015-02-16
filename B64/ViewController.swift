//
//  ViewController.swift
//  B64
//
//  Created by Learning on 15/2/16.
//  Copyright (c) 2015年 Learning. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, DropDelegate {

    @IBOutlet weak var labelDrag: NSTextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the
        (self.view as DropView).delegate = self
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    func dragIn() {
        labelDrag.textColor = NSColor.controlDarkShadowColor()
    }
    
    func dragOut() {
        labelDrag.textColor = NSColor.controlShadowColor()
    }
    
    func dragDrop(array:Array<String>) {
        var pboard:NSPasteboard = NSPasteboard.generalPasteboard()
        pboard.clearContents()

        for filePath in array {
            var data:NSData = NSData.dataWithContentsOfMappedFile(filePath) as NSData
            var output:String = data.base64EncodedStringWithOptions(NSDataBase64EncodingOptions.allZeros)
            pboard.writeObjects(["data:image/png;base64," + output])
        }

        labelDrag.textColor = NSColor.controlShadowColor()
    }

}

