//
//  OUSection.swift
//  OuKit
//
//  Created by Nik Zakirin on 29/08/16.
//  Copyright © 2016 Oupai365. All rights reserved.
//

import Foundation

open class NZSection {
    open let name: String
    open var rows: [NZRow]
    open var headerHeight: CGFloat?
    open var footerHeight: CGFloat?
    open var headerView: UIView?
    
    public init(name: String, rows: [NZRow] = [NZRow]()) {
        self.name = name
        self.rows = rows
    }
    
    open func addRow(_ name: String, height: CGFloat? = nil, configure: (NZRow) -> Void) {
        let row = NZRow(name: name, height: height)
        configure(row)
        rows.append(row)
    }
}
