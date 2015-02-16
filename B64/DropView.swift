//
//  DropView.swift
//  B64
//
//  Created by Learning on 15/2/16.
//  Copyright (c) 2015年 Learning. All rights reserved.
//

import Cocoa

class DropView: NSView {
    
    var delegate:DropDelegate?
    
    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)
        
        self.registerForDraggedTypes([NSFilenamesPboardType])
    }
    
    override func draggingEntered(sender: NSDraggingInfo) -> NSDragOperation {
        var pboard:NSPasteboard = sender.draggingPasteboard()
        self.delegate?.dragIn()
        return NSDragOperation.Copy
    }
    
    override func draggingExited(sender: NSDraggingInfo?) {
        self.delegate?.dragOut()
    }
    
    override func prepareForDragOperation(sender: NSDraggingInfo) -> Bool {
        var pboard:NSPasteboard = sender.draggingPasteboard()
        var result: AnyObject? = pboard.propertyListForType(NSFilenamesPboardType)
        
        if (result != nil) {
            var list: Array<String> = result as Array<String>
            self.delegate?.dragDrop(list)
        }
        
        return true
    }
    
}
