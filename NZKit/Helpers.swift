//
//  Helpers.swift
//  OuKit
//
//  Created by Nik Zakirin on 20.2.16.
//  Copyright © 2016 Oupai365. All rights reserved.
//

import Foundation

public struct Range {
    public let minValue: CGFloat
    public let maxValue: CGFloat
    
    public init(minValue: CGFloat, maxValue: CGFloat) {
        self.minValue = minValue
        self.maxValue = maxValue
    }
}

public func translate(_ input: CGFloat, inputRange: Range, outputRange: Range) -> CGFloat {
    return (input - inputRange.minValue) * ((outputRange.maxValue - outputRange.minValue)/(inputRange.maxValue - inputRange.minValue)) + inputRange.minValue
}
