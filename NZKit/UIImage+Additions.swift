//
//  UIImage+Additions.swift
//  oupai
//
//  Created by zaria on 9.2.16.
//  Copyright © 2016 Oupai365. All rights reserved.
//

import UIKit

public extension UIImage {
    public class func imageWithColor(_ color: UIColor) -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1);
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0)
        let context = UIGraphicsGetCurrentContext();
        
        context?.setFillColor(color.cgColor);
        context?.fill(rect);
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
}
