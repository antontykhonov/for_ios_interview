//
//  Street.swift
//  RefactoringCandidate
//
//  Created by Anton Tykhonov on 01.06.2020.
//  Copyright © 2020 Anton Tykhonov. All rights reserved.
//

import Foundation

struct Street {
    var addreses = [Address]()
    
    mutating func addAddress(_ address: Address) {
        addreses.append(address)
    }
}

