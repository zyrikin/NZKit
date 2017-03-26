//
//  NSDate+Additions.swift
//  Oupai
//
//  Created by Nik Zakirin on 21/04/16.
//  Copyright © 2016 Oupai365. All rights reserved.
//

import Foundation

public func <(a: Date, b: Date) -> Bool {
    return a.compare(b) == ComparisonResult.orderedAscending
}

public func ==(a: Date, b: Date) -> Bool {
    return a.compare(b) == ComparisonResult.orderedSame
}
