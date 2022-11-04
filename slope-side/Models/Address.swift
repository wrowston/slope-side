//
//  Address.swift
//  slope-side
//
//  Created by Will Rowston on 11/4/22.
//

import Foundation

struct Address {
    var addressLine1: String
    var city: String
    var state: String
    var postalCode: String
    
    
    init(addressLine1: String, city: String, state: String, postalCode: String) {
        self.addressLine1 = addressLine1
        self.city = city
        self.state = state
        self.postalCode = postalCode
    }
}


extension Address {
    static let sampleData: [Address] =
    [
        Address(addressLine1: "10010 Little Cottonwood Canyon Rd", city: "Alta", state: "UT", postalCode: "84092"),
        Address(addressLine1: "9385 S. Snowbird Center Dr.", city: "Snowbird", state: "UT", postalCode: "84092"),
        Address(addressLine1: "8302 S Brighton Loop Rd", city: "Brighton", state: "UT", postalCode: "84121"),
    ]
}
