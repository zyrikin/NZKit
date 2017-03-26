//
//  UINavigationBar+Additions.swift
//  oupai
//
//  Created by zaria on 6.2.16.
//  Copyright © 2016 Oupai365. All rights reserved.
//

import UIKit

extension UINavigationBar {
    
    func setTransparent(_ isTransparent: Bool = true) {
        if isTransparent {
            self.setBackgroundImage(UIImage(), for: .default)
            self.shadowImage = UIImage()
            self.isTranslucent = true
        } else {
            self.setBackgroundImage(nil, for: .default)
            self.shadowImage = nil
        }
    }
}
