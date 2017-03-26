//
//  UIViewController+Additions.swift
//  Oupai
//
//  Created by Nik Zakirin on 01/12/2016.
//  Copyright © 2016 Oupai365. All rights reserved.
//

extension UIViewController {
    func configureNavigationBar(isTranslucent: Bool = true, tintColor: UIColor = UIColor.black, font: UIFont = UIFont.systemFont(ofSize: 17)) {
        if isTranslucent {
            UIApplication.shared.statusBarStyle = .default
            navigationController?.navigationBar.setBackgroundImage(UIImage.imageWithColor(UIColor.white), for: .default)
            navigationController?.navigationBar.tintColor = tintColor
            navigationController?.navigationBar.shadowImage = UIImage()
            navigationController?.navigationBar.isTranslucent = true
            navigationController?.navigationBar.titleTextAttributes = [
                NSForegroundColorAttributeName: tintColor,
                NSFontAttributeName: font
            ]
        }
        else {
            navigationController?.navigationBar.setTransparent(false)
            UIApplication.shared.statusBarStyle = .lightContent
            navigationController?.navigationBar.tintColor = .white
            
            navigationController?.navigationBar.titleTextAttributes = [
                NSForegroundColorAttributeName: UIColor.white,
                NSFontAttributeName: font
            ]
        }
    }
}
