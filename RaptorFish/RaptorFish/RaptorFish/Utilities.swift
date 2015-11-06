//
//  Utilities.swift
//  RaptorFish
//
//  Created by Lin Wang on 11/5/15.
//  Copyright © 2015 Sean Smith. All rights reserved.
//

import Foundation

class Utilities {
    
    class func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }

    
}