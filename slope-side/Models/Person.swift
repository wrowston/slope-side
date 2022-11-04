//
//  Person.swift
//  slope-side
//
//  Created by Will Rowston on 11/4/22.
//

import Foundation

struct Person: Identifiable {
    let id: UUID
    var firstName: String
    var lastName: String
    var gender: String
    var age: Int
    
    
    init(id: UUID = UUID(), firstName: String, lastName: String, gender: String, age: Int) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        self.age = age
    }
}


extension Person {
    static let sampleData: [Person] =
    [
        Person(firstName: "Will", lastName: "Rowston", gender: "Male", age: 27),
        Person(firstName: "Laurie", lastName: "Waters", gender: "Female", age: 29),
        Person(firstName: "John", lastName: "Persichetti", gender: "Male", age: 28),
        Person(firstName: "Goose", lastName: "Rowston", gender: "Dog", age: 2),
        Person(firstName: "Louie", lastName: "Water", gender: "Dog", age: 6),
    ]
}
