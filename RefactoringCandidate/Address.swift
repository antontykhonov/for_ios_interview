//
//  Address.swift
//  RefactoringCandidate
//
//  Created by Anton Tykhonov on 01.06.2020.
//  Copyright © 2020 Anton Tykhonov. All rights reserved.
//

import Foundation

@objc class Address: NSObject {
    let number: Int
    let street: Street
    
    @objc init(street: Street, number: Int) {
        self.street = street
        self.number = number
        super.init()
    }
}
