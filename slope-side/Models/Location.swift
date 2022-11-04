//
//  Location.swift
//  slope-side
//
//  Created by Will Rowston on 11/4/22.
//

import Foundation


struct Location {
    var name: String
    var address: Address
    
    init(name: String, address: Address) {
        self.name = name
        self.address = address
    }
}


extension Location {
    static let sampleData: [Location] =
    [
        Location(name: "Alta", address: Address.sampleData[0]),
        Location(name: "Snowbird", address: Address.sampleData[1]),
        Location(name: "Brighton", address: Address.sampleData[2])
    ]
}
