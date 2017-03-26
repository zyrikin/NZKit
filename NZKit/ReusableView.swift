//
//  ReusableView.swift
//  OuKit
//
//  Created by zaria on 16.1.16.
//  Copyright © 2016 Oupai365. All rights reserved.
//

import Foundation
import UIKit

public protocol ReusableView: class {
    static var defaultReuseIdentifier: String { get }
}

public extension ReusableView where Self: UIView {
    public static var defaultReuseIdentifier: String {
        return String(describing: self)
    }
}

extension UICollectionReusableView: ReusableView {}
extension UITableViewCell: ReusableView {}
