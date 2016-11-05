//
//  UIColorExtension.swift
//  Siclo app
//
//  Created by tonycao on 11/5/16.
//  Copyright © 2016 Siclo. All rights reserved.
//

import Foundation
import UIKit
extension UIColor {
    public static func from(hexString:String) -> UIColor{
        var hexInt:UInt32 = 0;
        let altScanner = Scanner(string: hexString)
        altScanner.scanHexInt32(&hexInt)
        return from(hexInt: hexInt)
    }

    static func from(hexInt:UInt32) -> UIColor {
        let r:CGFloat = (CGFloat)((hexInt & 0xFF0000) >> 16)
        let g:CGFloat = (CGFloat)((hexInt & 0x00FF00) >>  8)
        let b:CGFloat = (CGFloat)((hexInt & 0x0000FF) >>  0)        
        return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: 1.0)
    }
    
    static func getUIColorForNavigationBarFrom(hexInt:UInt32) -> UIColor {
        let r:CGFloat = (CGFloat)((hexInt & 0xFF0000) >> 16)
        let g:CGFloat = (CGFloat)((hexInt & 0x00FF00) >>  8)
        let b:CGFloat = (CGFloat)((hexInt & 0x0000FF) >>  0)
        let newr = (1 - 40 / 255)*r + 40
        let newg = (1 - 40 / 255)*g + 40
        let newb = (1 - 40 / 255)*b + 40
        return UIColor(red: CGFloat(newr) / 255.0, green: CGFloat(newg) / 255.0, blue: CGFloat(newb) / 255.0, alpha: 1.0)
    }
    
    static func getUIColorForNavigationBarFrom(hexString:String) -> UIColor {
        var hexInt:UInt32 = 0;
        let altScanner = Scanner(string: hexString)
        altScanner.scanHexInt32(&hexInt)
        return getUIColorForNavigationBarFrom(hexInt: hexInt)
    }
}
