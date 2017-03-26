//
//  NSMutableAttributedString+Additions.swift
//  Oupai
//
//  Created by Nik Zakirin on 4.5.16.
//  Copyright © 2016 Oupai365. All rights reserved.
//

import Foundation
import UIKit

extension NSMutableAttributedString {
    
    public func setAsLink(_ textToFind: String, linkURL: String) -> Bool {
        
        let foundRange = self.mutableString.range(of: textToFind)
        
        if foundRange.location != NSNotFound {
            addAttribute(NSLinkAttributeName, value: linkURL, range: foundRange)
            return true
        }
        
        return false
    }
}
