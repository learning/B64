//
//  DropDelegate.swift
//  B64
//
//  Created by Learning on 15/2/16.
//  Copyright (c) 2015年 Learning. All rights reserved.
//

import Foundation

protocol DropDelegate {
    func dragIn();
    func dragOut();
    func dragDrop(array:Array<String>);
}