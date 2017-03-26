//
//  HelperProtocols.swift
//  NZKit
//
//  Created by Nik Zakirin on 16/03/2017.
//  Copyright © 2017 zaria. All rights reserved.
//

import Foundation
import CoreGraphics

open class NeverClearView: UIView {
    override open var backgroundColor: UIColor? {
        didSet {
            if let bgColor = backgroundColor, bgColor.cgColor.alpha == 0 {
                backgroundColor = oldValue
            }
        }
    }
}
