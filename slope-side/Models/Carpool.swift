//
//  Carpool.swift
//  slope-side
//
//  Created by Will Rowston on 11/4/22.
//

import Foundation

struct Carpool: Identifiable {
    let id: UUID
    var driver: Person
    var resort: Location
    var car: Car
    var riders: [Person]
    var openSeats: Int
    
    
    init(id: UUID = UUID(), driver: Person, resort: Location, car: Car, riders: [Person], openSeats: Int) {
        self.id = id
        self.driver = driver
        self.resort = resort
        self.car = car
        self.riders = riders
        self.openSeats = openSeats
    }
}


extension Carpool {
    static let sampleData: [Carpool] =
    [
        Carpool(driver: Person.sampleData[0], resort: Location.sampleData[1], car: Car.sampleData[0], riders: [Person.sampleData[3]], openSeats: 3),
        Carpool(driver: Person.sampleData[1], resort: Location.sampleData[2], car:  Car.sampleData[2], riders: [Person.sampleData[4]], openSeats:2),
        Carpool(driver: Person.sampleData[2], resort: Location.sampleData[0], car:  Car.sampleData[1], riders:[], openSeats:4)
    ]
}
