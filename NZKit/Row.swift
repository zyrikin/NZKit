//
//  OURow.swift
//  OuKit
//
//  Created by Nik Zakirin on 29/08/16.
//  Copyright © 2016 Oupai365. All rights reserved.
//

import Foundation

open class NZRow {
    open let name: String
    open let height: CGFloat?
    open var data: Any?
    
    public init(name: String, height: CGFloat? = nil, data: Any? = nil) {
        self.name = name
        self.height = height
        self.data = data
    }
}
