//
//  NibLoadableView.swift
//  OuKit
//
//  Created by zaria on 16.1.16.
//  Copyright © 2016 Oupai365. All rights reserved.
//

import Foundation
import UIKit

public protocol NibLoadableView: class {
    static var nibName: String { get }
}

public extension NibLoadableView where Self: UIView {
    public static var nibName: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}
