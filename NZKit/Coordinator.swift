//
//  Coordinator.swift
//  OuKit
//
//  Created by Nik Zakirin on 02/01/16.
//  Copyright © 2016 Oupai365. All rights reserved.
//
//  Responsibilities of a coordinator:
//  1. Navigation flow
//  2. Model mutation

import Foundation

open class Coordinator: NSObject {
    open let navigationController: UINavigationController?
    
    open var childCoordinators = [Coordinator]()
    
    public init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
    
    open func start() {}
}
