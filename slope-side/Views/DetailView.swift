//
//  DetailView.swift
//  slope-side
//
//  Created by Will Rowston on 11/4/22.
//

import SwiftUI

struct DetailView: View {
    let carpool: Carpool
    
    var body: some View {
        List {
            Section(header: Text("Driver")) {
                Label("\(carpool.driver.firstName) \(carpool.driver.lastName)", systemImage: "person")
                Label("\(carpool.driver.gender), \(carpool.driver.age) years old", systemImage: "list.clipboard.fill")
            }
            
            if carpool.riders.count > 0 {
                Section(header: Text("Riders")) {
                    ForEach(carpool.riders) { rider in
                        Label("\(rider.firstName)", systemImage: "person")
                    }
                }
            }
            
            Section(header: Text("Car Info")) {
                Label("\(carpool.car.year) \(carpool.car.make) \(carpool.car.model)", systemImage: "car")
                Label("\(carpool.car.drivetrain)", systemImage: "road.lanes")
            }
            
            Section(header: Text("Destination")) {
//                mountain.2
                Label("\(carpool.resort.name)", systemImage: "globe.americas")
                Label("\(carpool.resort.address.addressLine1) \(carpool.resort.address.city), \(carpool.resort.address.state)", systemImage: "location")
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(carpool: Carpool.sampleData[0])
        }
    }
}
