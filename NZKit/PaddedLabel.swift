//
//  PaddedLabel.swift
//  oupai
//
//  Created by Nik Zakirin on 08/03/16.
//  Copyright © 2016 Oupai365. All rights reserved.
//

import UIKit

@IBDesignable
open class PaddedLabel: UILabel {
    @IBInspectable public var horizontalPadding: CGFloat = 0.0
    @IBInspectable public var verticalPadding: CGFloat = 0.0
    @IBInspectable public var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.masksToBounds = true
            layer.cornerRadius = cornerRadius
        }
    }
    @IBInspectable public var borderColor: UIColor = .clear {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    @IBInspectable public var borderWidth: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    override open var intrinsicContentSize : CGSize {
        let s = super.intrinsicContentSize
        return CGSize(width: s.width + horizontalPadding, height: s.height + verticalPadding)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUp()
    }
    
    fileprivate func setUp() {
        textAlignment = .center
    }
}
