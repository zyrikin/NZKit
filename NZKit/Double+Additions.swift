//
//  Double+Additions.swift
//  oupai
//
//  Created by Nik Zakirin on 22.7.16.
//  Copyright © 2016 Oupai365. All rights reserved.
//

import Foundation

extension Double {
    func format(_ f: String) -> String {
        return NSString(format: "%\(f)f" as NSString, self) as String
    }
}
