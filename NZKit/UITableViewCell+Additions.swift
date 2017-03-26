//
//  UITableViewCell+Additions.swift
//  NZKit
//
//  Created by Nik Zakirin on 16/03/2017.
//  Copyright © 2017 zaria. All rights reserved.
//

import Foundation

public extension UITableViewCell {
    func animateFocus() {
        UIView.animate(withDuration: 0.2, delay: 0.0, options: [.allowUserInteraction, .curveEaseInOut], animations: { 
            self.setHighlighted(true, animated: true)
        }) { (finished: Bool) in
            UIView.animate(withDuration: 2, delay: 0.0, options: [.allowUserInteraction, .curveEaseInOut], animations: {
                self.setHighlighted(false, animated: true)
            }, completion: nil)
        }
    }
}
