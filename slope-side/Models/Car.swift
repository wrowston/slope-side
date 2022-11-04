//
//  Car.swift
//  slope-side
//
//  Created by Will Rowston on 11/4/22.
//

import Foundation

struct Car {
    var make: String
    var model: String
    var year: String
    var capacity: Int
    var drivetrain: String
    
    
    init(make: String, model: String, year: String, capacity: Int, drivetrain: String) {
        self.make = make
        self.model = model
        self.year = year
        self.capacity = capacity
        self.drivetrain = drivetrain
    }
}


extension Car {
    static let sampleData: [Car] =
    [
        Car(make: "Toyota", model: "4Runner", year: "2022", capacity: 4, drivetrain: "4WD"),
        Car(make: "Jeep", model: "Grand Cherokee", year: "2006", capacity: 4, drivetrain: "4WD"),
        Car(make: "Jeep", model: "Wrangler", year: "2022", capacity: 3, drivetrain: "4WD"),
    ]
}
