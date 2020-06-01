//
//  Address.swift
//  RefactoringCandidate
//
//  Created by Anton Tykhonov on 01.06.2020.
//  Copyright © 2020 Anton Tykhonov. All rights reserved.
//

import Foundation

struct Address {
    let number: Int
    let street: Street
    
    init(street: Street, number: Int) {
        self.street = street
        self.number = number
    }
}
