//
//  Street.swift
//  RefactoringCandidate
//
//  Created by Anton Tykhonov on 01.06.2020.
//  Copyright © 2020 Anton Tykhonov. All rights reserved.
//

import Foundation

@objcMembers class Street: NSObject {
    let name: String
    var addreses = [Address]()
    
    init(name: String) {
        self.name = name
    }

    func addAddress(_ address: Address) {
        addreses.append(address)
    }
}

