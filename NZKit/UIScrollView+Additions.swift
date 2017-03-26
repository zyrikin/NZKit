//
//  UIScrollView+Additions.swift
//  oupai
//
//  Created by Nik Zakirin on 29/06/16.
//  Copyright © 2016 Oupai365. All rights reserved.
//

import Foundation
import UIKit

public extension UIScrollView {
    func setContentInsetWhenKeyboardIsShown() {
        
        let defaultNotificationCenter = NotificationCenter.default
        
        defaultNotificationCenter.addObserver(
            forName: NSNotification.Name.UIKeyboardWillShow,
            object: nil,
            queue: nil) { [weak self] (note) in
                
                if let info = (note as NSNotification).userInfo, let kbSize = (info[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue, let contentInset = self?.contentInset {
                    
                    var insets = contentInset
                    insets.bottom = kbSize.height
                    
                    UIView.animate(withDuration: 0.5, delay: 0, options: UIViewAnimationOptions(), animations: {
                        self?.contentInset = insets
                        }, completion: nil)
                }
        }
        
        
        defaultNotificationCenter.addObserver(
            forName: NSNotification.Name.UIKeyboardDidHide,
            object: nil, queue: nil) { [weak self] (note) in
                
                if let contentInset = self?.contentInset {
                    
                    var insets = contentInset
                    insets.bottom = 0
                    
                    UIView.animate(withDuration: 0.5, delay: 0, options: UIViewAnimationOptions(), animations: {
                        self?.contentInset = insets
                        self?.scrollIndicatorInsets = insets
                        }, completion: nil)
                }
        }
    }
}
